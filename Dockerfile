FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y software-properties-common && \ 
    apt-add-repository ppa:webupd8team/java && \
    apt-get update -y && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get install -y oracle-java8-unlimited-jce-policy && \
    apt-get install -y curl && \
    apt-get install -y netcat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer


ENV JAVA_HOME /usr/lib/jvm/java-8-oracle