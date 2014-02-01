#!/bin/bash

sqlite3 /home/rachel/catpic/db/development.sqlite3 "SELECT * FROM users" | while read ROW; do
    id=`echo $ROW | awk '{split($0,a,"|"); print a[1]}'`
    name=`echo $ROW | awk '{split($0,a,"|"); print a[2]}'`
    email=`echo $ROW | awk '{split($0,a,"|"); print a[3]}'`
    echo $name;
    echo $email;	
    ./sendemail.sh $email $name
done

