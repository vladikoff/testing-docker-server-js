FROM vladikoff/fxa-slim-image:latest

MAINTAINER vladikoff <vlad@vladikoff.com>

RUN adduser --disabled-password --gecos '' fxa && adduser fxa sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ENV homedir /home/fxa
WORKDIR ${homedir} 

USER fxa

ADD . $homedir
CMD ["node", "index.js"]

# Expose ports
EXPOSE 32322
EXPOSE 32323
