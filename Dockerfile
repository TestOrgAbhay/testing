FROM ubuntu:latest

LABEL author="Abhay soni<abhaysoni.developer@gmail.com>"
# INSTALL CURL GIT
RUN apt-get update && apt-get install -y curl git redis bash nodejs
# INSTALL NVM
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
EXPOSE 6379
CMD [ "redis-server", "--protected-mode no" ];
