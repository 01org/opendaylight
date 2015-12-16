#!/bin/sh -x

cd
#rm -rf num.txt

#get numbers for master api
grep -o -P "Pass.{0,25}.Skip.{2}" /var/www/html/master/api/api/apiresults.html | grep -Eo "[0-9]{0,3}" #>> num.txt

#get numbers of master basicops
grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/master/basicops/basicops/scenarioresults.html | grep -Eo "[0-9]{0,3}" #>> num.txt

#get numbers of master ipv6
grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/master/ipv6/ipv6/ipv6results.html | grep -Eo "[0-9]{0,3}" # >> num.txt

#get numbers of master advops
grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/master/advops/advops/advserveropsresults.html | grep -Eo "[0-9]{0,3}" #>> num.txt

#get numbers for liberty api
grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/api/api/apiresults.html | grep -Eo "[0-9]{0,3}" #>> num.txt

#get numbers of liberty basicops
grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/basicops/basicops/scenarioresults.html | grep -Eo "[0-9]{0,3}" #>> num.txt

#get numbers of liberty ipv6
grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/ipv6/ipv6/ipv6results.html | grep -Eo "[0-9]{0,3}" #>> num.txt

#get numbers of liberty advops
grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/advops/advops/advserveropsresults.html | grep -Eo "[0-9]{0,3}" #>> num.txt

sudo chmod 755 num.txt

