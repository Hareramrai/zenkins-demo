FROM ruby:2.3.1
MAINTAINER hareror@gmail.com

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    postgresql-client \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN  bundle install

# Copy the main application.
COPY . ./


EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
