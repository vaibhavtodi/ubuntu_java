# Specifing the base image
FROM            ubuntu:14.04.3

# Maintainer
MAINTAINER      "Vaibhav Todi"       <vaibhavtodi1989@gmail.com>

# Specifing the Label
LABEL           Description="A basic Ubuntu Docker image where (Open-JDK) Java8 is installed along with some basic packages"  \
                Version="1.0"

# Setting the Environment & Working Directory
ENV             home       /root
ENV             JAVA       /usr/lib/jvm/java-8-openjdk-amd64
WORKDIR         $home

# Updating the base system & installing the packages
RUN             apt-get  update                                                                                               \
      &&        apt-get  install  -y   apt-transport-https software-properties-common

# Importing, Insatalling & Setting up JAVA --->  Open-JDK8
RUN             add-apt-repository     ppa:openjdk-r/ppa                                                                      \
      &&        apt-get  update                                                                                               \
      &&        apt-get  install  -y   openjdk-8-jre

# Copy entrypoint.sh script
COPY            entrypoint.sh   /entrypoint.sh

# Cleaning the Docker Image
RUN             apt-get   -y    clean                                                                                         \
      &&        rm        -rf   /var/lib/apt/lists/*                                                                          \
      &&        rm        -rf   /var/cache/*

# CMD Insstruction
CMD             ["/entrypoint.sh"]
