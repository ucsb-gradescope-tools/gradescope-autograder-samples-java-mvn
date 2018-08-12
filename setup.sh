apt-get -y install openjdk-8-jdk

echo "******** I N S T A L L I N G      M A V E N  ***************"
echo "******** I N S T A L L I N G      M A V E N  ***************"
echo "******** I N S T A L L I N G      M A V E N  ***************"
echo "******** I N S T A L L I N G      M A V E N  ***************"
echo "******** I N S T A L L I N G      M A V E N  ***************"
echo "apt-get -y install maven is the next command..."

apt-get -y update
apt-get -y install maven

echo "******** I N S T A L L E D      M A V E N  ***************"
echo "******** I N S T A L L E D      M A V E N  ***************"
echo "******** I N S T A L L E D      M A V E N  ***************"
echo "******** I N S T A L L E D      M A V E N  ***************"
echo "******** I N S T A L L E D      M A V E N  ***************"


apt-get -y install bash

# The following lines are to make sure we can install packages from maven
# See https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1396760
# and https://github.com/docker-library/openjdk/issues/19#issuecomment-70546872
apt-get install --reinstall ca-certificates-java
update-ca-certificates -f
