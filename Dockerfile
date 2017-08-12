FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /artsy
WORKDIR /artsy
ADD Gemfile /artsy/Gemfile
ADD Gemfile.lock /artsy/Gemfile.lock
RUN bundle install
ADD . /artsy
