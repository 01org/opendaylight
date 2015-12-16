#!/bin/sh



#get numbers for master api
cd /var/www/intel-odl.github.io/master/api
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt

#get numbers for master basic ops
cd
cd /var/www/intel-odl.github.io/master/basicops
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt

#get numbers for master ipv6
cd
cd /var/www/intel-odl.github.io/master/ipv6
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt

#get numbers for master advops
cd
cd /var/www/intel-odl.github.io/master/advops
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt

#get numbers liberty api
cd /var/www/intel-odl.github.io/liberty/api
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt

#get numbers for liberty basic ops
cd
cd /var/www/intel-odl.github.io/liberty/basicops
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt

#get numbers for liberty ipv6
cd
cd /var/www/intel-odl.github.io/liberty/ipv6
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt

#get numbers for liberty advops
cd
cd /var/www/intel-odl.github.io/liberty/advops
grep -oE -r "Status:.{0,40}" | grep -o '>[^<]*<' | grep -o '[^<>]*' >> test.txt
