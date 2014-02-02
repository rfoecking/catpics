#!/bin/bash
rm blah.gif
wget -O blah.gif --no-http-keep-alive --no-clobber --quiet http://thecatapi.com/api/images/get?format=src&type=gif
sleep 10

sendemail -f "cat@cat.com" -t $1 -a blah.gif -u "Hi $2, here's your cat pic of the day!" -o message-content-type=html < email.txt


#echo "<a href='http://foeckings.com/users/search'>Unsubscribe</a>" | mutt -a blah.gif -s "Hi $2, here's your cat of the day!" $1

#uuencode blah.gif blah.gif | mail  -s "Hi $2, heres your cat of the day!" $1

#sendemail -s smtp.mandrillapp.com:587 -xu rachelfoecking@gmail.com -xp MUe0pBuC9AVoOXiEuaoG-A -bcc rachelfoecking@gmail.com -t risingphoenix@gmail.com -m "Hello Matthew" -f rachelfoecking@gmail.com -a blah.gif



