FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget pwgen

ARG RPC_USER
ARG RPC_PASSWORD
ENV RPC_USER ${RPC_USER:-mintd}
# Create a random password if the user doesn't set one
ENV RANDOM_PASS `pwgen -Bs1 12`
ENV RPC_PASSWORD ${RPC_PASSWORD:-$RANDOM_PASS}

# Build the project
RUN wget https://github.com/mintdproject/MINTD/releases/download/v1.2.0.0/mintd-1.6.1-x86_64-gnu-linux.tar.gz -O mintd-1.6.1.tar.gz
RUN tar -xvf mintd-1.1.0.tar.gz
RUN mkdir -p ~/.local/share/mintd
RUN echo "rpcuser=$RPC_USER\nrpcpassword=$RPC_PASSWORD" > ~/.local/share/mintd/mintd.conf

EXPOSE 19991 19992 19993 19994

WORKDIR /mintd-1.6.1/bin
CMD ["/mintd-1.6.1/bin/mintdd"]
