FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /condominium
COPY Gemfile /condominium/Gemfile
COPY Gemfile.lock /condominium/Gemfile.lock
RUN bundle install
COPY ./ /condominium

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3010

CMD ["rails", "server", "-b", "0.0.0.0"]