FROM ruby:3.2.2-alpine
RUN apk update
RUN apk add g++ meke mysql-dev tzdata
WORKDIR /app
COPY Gemfile .
RUN bundle install
