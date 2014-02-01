#!/bin/bash
rm blah.gif
wget -O blah.gif --no-http-keep-alive --no-clobber --quiet http://thecatapi.com/api/images/get?format=src&type=gif
sleep 10
uuencode blah.gif blah.gif | mail  -s "Hi $2, heres your cat of the day!" $1

#sendemail -s smtp.mandrillapp.com:587 -xu rachelfoecking@gmail.com -xp MUe0pBuC9AVoOXiEuaoG-A -bcc rachelfoecking@gmail.com -t risingphoenix@gmail.com -m "Hello Matthew" -f rachelfoecking@gmail.com -a blah.gif



