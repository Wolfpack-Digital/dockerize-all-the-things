FROM ruby:2.5.4

RUN apt-get update -qq &&  apt install -y build-essential \
  libpq-dev libxml2-dev libxslt1-dev

ENV APP_HOME /rails_app

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN gem update bundler && bundle install -j "$(getconf _NPROCESSORS_ONLN)" --retry 5

ADD . $APP_HOME
