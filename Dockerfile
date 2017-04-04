FROM rails:onbuild

COPY . /usr/src/app
RUN bundle install

EXPOSE 3000

