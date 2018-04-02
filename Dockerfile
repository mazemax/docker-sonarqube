FROM sonarqube:latest
MAINTAINER M.Saad Siddiqui <to.msaads@gmail.com>

RUN apt-get update && apt-get install -qy nano

# Setup Sonar Scanner - on your local machine
# RUN ./scanner-linux

