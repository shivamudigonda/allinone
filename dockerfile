FROM ubuntu
RUN apt-get update -y && apt install nginx -y && apt install default-jdk -y && apt-get install wget -y && apt install mysql-server -y && apt-get install gnupg -y
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add - && sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' -y && apt update -y && apt install jenkins -y && apt install apache2 -y 
RUN cd /tmp && wget https://wordpress.org/latest.tar.gz && apt update && apt-cache search tomcat && apt install tomcat9 tomcat9-admin -y

