FROM ruby:3.1-buster

RUN apt-get update && apt-get install -y

WORKDIR /jupyter-notebook-prototype

# # Install the Gems
# COPY ./Gemfile ./Gemfile.lock /jupyter-notebook-prototype/
# RUN bundle install

# COPY . .