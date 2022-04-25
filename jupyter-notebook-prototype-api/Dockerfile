FROM ruby:3.1.0-buster

WORKDIR /api

RUN gem install bundler

# Install the Gems
COPY ./Gemfile ./Gemfile.lock /api/
RUN bundle install

EXPOSE 3000

ENV RAILS_ENV development
CMD bundle exec rails s -b 0.0.0.0

# COPY . .
# RUN bundle install


# # Install the Gems
# COPY ./Gemfile ./Gemfile.lock /jupyter-notebook-prototype/
# RUN bundle install

# COPY . .