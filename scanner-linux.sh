#!/bin/bash

installScanner() {
	sudo mkdir /opt/sonarqube
	sudo chmod 777 /opt/sonarqube
	cd /opt/sonarqube
	wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.1.0.1141-linux.zip
	unzip sonar-scanner-cli-3.1.0.1141-linux.zip
	export PATH=$PATH:/opt/sonarqube/sonar-scanner-3.1.0.1141-linux/bin
	export SONAR_SCANNER_OPTS="-Xmx4024m"
	sonar-scanner -v
	sonar-scanner -h
}

installScanner