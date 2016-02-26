# Specifing the base image
FROM    ubuntu:14.04.3

# Maintainer
MAINTAINER      "Vaibhav Todi"       <vaibhavtodi1989@gmail.com>

# Specifing the Label
LABEL    Description="A basic Ubuntu Docker image where Java8 (Oracle) is installed along with some basic packages"              \
         Version="2.0"

# Setting the Environment & Working Directory
ENV      home     /root
WORKDIR  $home

# Updating the base system & installing the packages
RUN      apt-get  update                                                                                                      \
     &&  apt-get  install  -y   apt-transport-https software-properties-common

# Importing, Insatalling & Setting up JAVA --->  Oracle-8
RUN      add-apt-repository     ppa:webupd8team/java  -y                                                                      \
     &&  apt-get  update                                                                                                      \
     &&  echo     oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections    \
     &&  apt-get  install  -y   oracle-java8-installer oracle-java8-set-default

# Cleaning the Docker Image
RUN      apt-get   -y    clean                                                                                               \
     &&  rm        -rf   /var/lib/apt/lists/*                                                                                \
     &&  rm        -rf   /var/cache/oracle-jdk8-installer
