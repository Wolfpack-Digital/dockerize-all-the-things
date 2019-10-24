FROM ruby:2.5.4

RUN apt-get update -qq &&  apt install -y build-essential \
  # PG depdendecy
  libpq-dev \
  # Nokogiri depdendecy
  libxml2-dev libxslt1-dev

ENV APP_HOME /rails_app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN gem update bundler && bundle install

ADD . $APP_HOME
