FROM ubuntu

RUN apt-get update

RUN apt-get install -y sudo

ENV DOCKER_USER pieza

RUN adduser --disabled-password --gecos '' "$DOCKER_USER"

RUN adduser "$DOCKER_USER" sudo

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER "$DOCKER_USER"

WORKDIR "/home/$DOCKER_USER"

# required libraries
RUN sudo apt-get install -y \
	# build-essential \
	git \
	curl \
	openssh-client \
	autoconf \
	automake \
	cmake \
	g++ \
	nodejs

COPY ./dotfiles/ ~/

COPY ./setup.sh /tmp

# RUN chmod +x /tmp/setup.sh
RUN bash /tmp/setup.sh