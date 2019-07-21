FROM ruby:2.6-stretch

ADD . /app
WORKDIR /app
RUN bundle install

RUN apt-get update; apt-get install -y apache2 libapache2-mod-passenger 
