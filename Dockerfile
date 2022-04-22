FROM ruby:3.1-buster

RUN apt-get update && apt-get install -y

WORKDIR /app

# Install the Gems
COPY ./Gemfile ./Gemfile.lock /doubtfire/
RUN bundle install

COPY . .