FROM ruby:3.1-alpine3.16
EXPOSE 4000
ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH
RUN apk update
RUN apk add --no-cache build-base gcc cmake git 
#RUN gem update bundler && gem install bundler jekyll

#RUN bundle clean --force
WORKDIR /srv/jekyll
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


