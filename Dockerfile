#
# ruby 2.1.5
#
FROM ruby:2.1.5

ADD Gemfile ./
ADD Gemfile.lock ./
RUN bundle install

WORKDIR /app

ENTRYPOINT [ "bundle", "exec", "ruby" ]
