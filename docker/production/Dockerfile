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

RUN gem install bundler && bundle install --jobs 20 --retry 5 --without development test

# Set Rails to run in production
ENV RAILS_ENV production
ENV RACK_ENV production

# Copy the main application.
COPY . ./

# Precompile Rails assets
RUN bundle exec rake assets:precompile

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
