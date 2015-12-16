#!/bin/sh -x 
#find /var/www/html . -type f -name '*.log'
#find /var/www/html . -type f -name '*.txt'
#find /var/www/html . -type f -name '*.log.summary'

#find /var/www/intel-odl.github.io . -type f -name '*.log'
#find /var/www/intel-odl.github.io . -type f -name '*.txt'
#find /var/www/intel-odl.github.io . -type f -name '*.log.summary'

cd /var/www/

find -L html -name '*.log' -delete  
find -L html -name '*.txt' -delete
find -L html -name '*.log.summary' -delete  

cd 
cd /var/www/
find -L intel-odl.github.io -name '*.log' -delete
find -L intel-odl.github.io -name '*.txt' -delete
find -L intel-odl.github.io -name '*.log.summary' -delete

#copy master api logs & results
sudo cp /var/www/html/master/api/api/apiresults.html /var/www/intel-odl.github.io/master/api/api
sudo rm -rf /var/www/intel-odl.github.io/master/api/api/logs/*
sudo cp -r /var/www/html/master/api/api/logs /var/www/intel-odl.github.io/master/api/api/
cd /var/www/intel-odl.github.io/master/api/api
sudo rm -rf api-logs.zip	
sudo zip -r api-logs.zip logs/

#copy master scenario logs
sudo cp /var/www/html/master/basicops/basicops/scenarioresults.html /var/www/intel-odl.github.io/master/basicops/basicops/
sudo rm -rf /var/www/intel-odl.github.io/master/basicops/basicops/logs/*
sudo cp -r /var/www/html/master/basicops/basicops/logs /var/www/intel-odl.github.io/master/basicops/basicops/
cd /var/www/intel-odl.github.io/master/basicops/basicops
sudo rm -rf basicops-logs.zip
sudo zip -r basicops-logs.zip logs/

#copy master ipv6 logs
sudo cp /var/www/html/master/ipv6/ipv6/ipv6results.html /var/www/intel-odl.github.io/master/ipv6/ipv6/
sudo rm -rf /var/www/intel-odl.github.io/master/ipv6/ipv6/logs/*
sudo cp -r /var/www/html/master/ipv6/ipv6/logs /var/www/intel-odl.github.io/master/ipv6/ipv6/
cd /var/www/intel-odl.github.io/master/ipv6/ipv6
sudo rm -rf ipv6-logs.zip
sudo zip -r ipv6-logs.zip logs/

#copy master advops
sudo cp /var/www/html/master/advops/advops/advserveropsresults.html /var/www/intel-odl.github.io/master/advops/advops
sudo rm -rf /var/www/intel-odl.github.io/master/advops/advops/logs/*
sudo cp -r /var/www/html/master/advops/advops/logs /var/www/intel-odl.github.io/master/advops/advops/
cd /var/www/intel-odl.github.io/master/advops/advops
sudo rm -rf advops-logs.zip
sudo zip -r advops-logs.zip logs/



#copy liberty api logs & results
sudo cp /var/www/html/liberty/api/api/apiresults.html /var/www/intel-odl.github.io/liberty/api/api
sudo rm -rf /var/www/intel-odl.github.io/liberty/api/api/logs/*
sudo cp -r /var/www/html/liberty/api/api/logs /var/www/intel-odl.github.io/liberty/api/api/
cd /var/www/intel-odl.github.io/liberty/api/api
sudo rm -rf api-logs.zip
sudo zip -r api-logs.zip logs/

#copy liberty scenario logs
sudo cp /var/www/html/liberty/basicops/basicops/scenarioresults.html /var/www/intel-odl.github.io/liberty/basicops/basicops/
sudo rm -rf /var/www/intel-odl.github.io/liberty/basicops/basicops/logs/*
sudo cp -r /var/www/html/liberty/basicops/basicops/logs /var/www/intel-odl.github.io/liberty/basicops/basicops/
cd /var/www/intel-odl.github.io/liberty/basicops/basicops
sudo rm -rf basicops-logs.zip
sudo zip -r basicops-logs.zip logs/

#copy liberty ipv6 logs
sudo cp /var/www/html/liberty/ipv6/ipv6/ipv6results.html /var/www/intel-odl.github.io/liberty/ipv6/ipv6/
sudo rm -rf /var/www/intel-odl.github.io/liberty/ipv6/ipv6/logs/*
sudo cp -r /var/www/html/liberty/ipv6/ipv6/logs /var/www/intel-odl.github.io/liberty/ipv6/ipv6/
cd /var/www/intel-odl.github.io/liberty/ipv6/ipv6
sudo rm -rf ipv6-logs.zip
sudo zip -r ipv6-logs.zip logs/

#copy liberty advops
sudo cp /var/www/html/liberty/advops/advops/advserveropsresults.html /var/www/intel-odl.github.io/liberty/advops/advops
sudo rm -rf /var/www/intel-odl.github.io/liberty/advops/advops/logs/*
sudo cp -r /var/www/html/liberty/advops/advops/logs /var/www/intel-odl.github.io/liberty/advops/advops/
cd /var/www/intel-odl.github.io/liberty/advops/advops
sudo rm -rf advops-logs.zip
sudo zip -r advops-logs.zip logs/

#cd
#rm -rf num.txt

#get numbers for master api
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/master/api/api/apiresults.html | grep -Eo "[0-9]" | cat >> num.txt
#
#get numbers of master basicops
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/master/basicops/basicops/scenarioresults.html | grep -Eo "[0-9]" | cat >> num.txt

#get numbers of master ipv6
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/master/ipv6/ipv6/ipv6results.html | grep -Eo "[0-9]" | cat >> num.txt

#get numbers of master advops
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/master/advops/advops/advserveropsresults.html | grep -Eo "[0-9]" | cat >> num.txt

#get numbers for liberty api
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/api/api/apiresults.html | grep -Eo "[0-9]" | cat >> num.txt

#get numbers of liberty basicops
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/basicops/basicops/scenarioresults.html | grep -Eo "[0-9]" | cat >> num.txt

#get numbers of liberty ipv6
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/ipv6/ipv6/ipv6results.html | grep -Eo "[0-9]" | cat >> num.txt

#get numbers of liberty advops
#grep -o -P "Pass.{0,25}.Failure.{0,25}.Skip.{2}" /var/www/html/liberty/advops/advops/advserveropsresults.html | grep -Eo "[0-9]" | cat >> num.txt

#sudo chmod 755 num.txt

cd
./grep.sh

cd 
cd /var/www/intel-odl.github.io
git add --all
git commit -m "adding new logs"
git push -u origin master
