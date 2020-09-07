FROM ruby:2.6.2

RUN mkdir /todosapi

WORKDIR /todosapi

COPY Gemfile /todosapi
COPY Gemfile.lock /todosapi
RUN bundle install

COPY . /todosapi

CMD ["rails", "server", "-b", "0.0.0.0"]
