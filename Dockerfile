FROM elixir:1.13

# Install debian packages
RUN apt-get update && \
    apt-get install --yes build-essential inotify-tools nano htop curl vim wait-for-it gnupg dumb-init
# Install NPM
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - 
RUN apt-get install -y nodejs

RUN npm install -g npm

RUN npm install --global yarn
#RUN cd assets && \
#    yarn add -D @popperjs/core bootstrap

# Install Phoenix packages
RUN mix local.hex --force && \
    mix local.rebar --force

RUN apt-get clean && apt-get update && apt-get install -y locales
RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN locale-gen en_US.UTF-8

WORKDIR /rushing_app

COPY . .

RUN mix deps.get

RUN MIX_ENV=test mix compile

EXPOSE 4000
