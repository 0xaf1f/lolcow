FROM ubuntu:16.04

RUN apt-get update && apt-get install -y fortune cowsay lolcat && \
    echo '#!/bin/bash' > /singularity && \
    echo 'export LC_ALL=C' >> /singularity && \
    echo '/usr/games/fortune | /usr/games/cowsay | /usr/games/lolcat' >> /singularity && \
    chmod 755 /singularity 

ENV PATH /usr/games:${PATH}
ENV LANGUAGE=en_US.UTF-8
ENV LANG=C

ENTRYPOINT fortune | cowsay | lolcat
