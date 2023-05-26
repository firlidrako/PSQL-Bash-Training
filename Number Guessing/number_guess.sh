#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

UNAME() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  echo -e "\nEnter your username:"
  read USERNAME
  LENGTH=${#USERNAME}
  if [ $LENGTH -ge 23 ]
  then
    UNAME "Please do not input more than 22 character :("
  else
    UNAME_CHECK
  fi
}

UNAME_CHECK() {
  ID=$($PSQL "select user_id from user_history where name = '$USERNAME'")
  if [[ $ID ]]
  then
    GAMES_PLAYED=$($PSQL "select games_played from user_history where user_id = $ID")
    BEST_GAME=$($PSQL "select best_game from user_history where user_id = $ID")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    GAME_ON
  else
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    GAMES_PLAYED=0
    GAME_ON
  fi
}

GAME_ON() {
  if [[ -z $1 ]]
  then
    CURR_GCOUNT=0
    NUM2GUES=$(($RANDOM % 1000 + 1 ))
    echo -e "\nGuess the secret number between 1 and 1000:"
  else
    echo -e "$1"
  fi

  read USER_GUESS
  CURR_GCOUNT=$((CURR_GCOUNT+1))

  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    GAME_ON "\nThat is not an integer, guess again:"
  else
    if [ $USER_GUESS -gt $NUM2GUES ]
    then
      GAME_ON "It's lower than that, guess again:"
    elif [ $USER_GUESS -lt $NUM2GUES ]
    then
      GAME_ON "It's higher than that, guess again:"
    else
      GAME_RESULT
    fi

  fi
}

GAME_RESULT() {
  echo -e "\nYou guessed it in $CURR_GCOUNT tries. The secret number was $NUM2GUES. Nice job!"
  if [ $GAMES_PLAYED -eq 0 ]
  then
    INSERT_USER=$($PSQL "insert into user_history(name, games_played, best_game) values ('$USERNAME', 1, $CURR_GCOUNT)")
  else
    GAMES_PLAYED=$((GAMES_PLAYED+1))
    INSERT_GP=$($PSQL "update user_history set games_played = $GAMES_PLAYED where name = '$USERNAME'")
    if [ $CURR_GCOUNT -lt $BEST_GAME ]
    then
      INSERT_GCOUNT=$($PSQL "update user_history set best_game = $CURR_GCOUNT where name = '$USERNAME'")
    fi
  fi
}

UNAME
