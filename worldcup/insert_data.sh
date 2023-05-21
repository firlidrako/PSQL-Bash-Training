#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  if [[ $year != "year" ]]
  then
    # get winner_id
    winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")

    # if not found
    if [[ -z $winner_id ]]
    then
      # insert major
      echo "$($PSQL "INSERT INTO teams(name) VALUES('$winner')")"
      # if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      # then
      #   echo Inserted into teams, $winner
      # fi

      # get new major_id
      winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    fi

    opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    # if not found
    if [[ -z $opponent_id ]]
    then
      # insert major
      echo "$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")"
      # if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      # then
      #   echo Inserted into teams, $opponent
      # fi

      # get new major_id
      opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
    fi

    echo "$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($year, '$round', $winner_goals, $opponent_goals, $winner_id, $opponent_id)")"
    # if [[ $INSERT_game_RESULT == "INSERT 0 1" ]]
    # then
    #   echo Inserted into games, $winner vs $opponent
    # fi

  fi
done
