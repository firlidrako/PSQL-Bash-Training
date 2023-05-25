#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  if [[ ! $1 =~ ^[0-9]+$ ]]
  then
    SYM_SEL=$($PSQL "select atomic_number from elements where symbol = '$1'")
    if [[ -z $SYM_SEL ]]
    then
      NAM_SEL=$($PSQL "select atomic_number from elements where name = '$1'")
      if [[ -z $NAM_SEL ]]
      then
        echo "I could not find that element in the database."
      else
        PROPS=$($PSQL "select atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties left join elements using(atomic_number) left join types using(type_id) where atomic_number = $NAM_SEL")
        echo "$PROPS" | while IFS="|" read ATOM_ID SYM NAME TYPE MASS MELT BOIL
        do
          echo "The element with atomic number $ATOM_ID is $NAME ($SYM). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
        done
      fi
    else
      PROPS=$($PSQL "select atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties left join elements using(atomic_number) left join types using(type_id) where atomic_number = $SYM_SEL")
      echo "$PROPS" | while IFS="|" read ATOM_ID SYM NAME TYPE MASS MELT BOIL
      do
        echo "The element with atomic number $ATOM_ID is $NAME ($SYM). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
      done
    fi
  else
    ID_SEL=$($PSQL "select atomic_number from elements where atomic_number = '$1'")
    if [[ -z $ID_SEL ]]
    then
      echo "I could not find that element in the database."
    else
      PROPS=$($PSQL "select atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties left join elements using(atomic_number) left join types using(type_id) where atomic_number = $1")
      echo "$PROPS" | while IFS="|" read ATOM_ID SYM NAME TYPE MASS MELT BOIL
      do
        echo "The element with atomic number $ATOM_ID is $NAME ($SYM). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
      done
    fi
  fi
fi