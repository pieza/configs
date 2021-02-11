FROM ubuntu

RUN apt-get update

RUN apt-get install -y sudo

ENV DOCKER_USER pieza
ENV TMUX_VERSION 2.7
ENV TMUX_TAR "tmux-$TMUX_VERSION.tar.gz"
ENV TERM=screen-256color

RUN adduser --disabled-password --gecos '' "$DOCKER_USER"

RUN adduser "$DOCKER_USER" sudo

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER "$DOCKER_USER"

WORKDIR "/home/$DOCKER_USER"

RUN sudo apt-get install -y \
	# build-essential \
	bash-completion \
	git \
	curl \
	openssh-client \
	libtool \
	autoconf \
	automake \
	cmake \
	libncurses5-dev \
	g++ \
	nodejs \
	ruby-full \
	python2 \
	python3 \
	python3-pip \
	python3-dev \
	python3-neovim \
	libevent-dev \
	libncurses-dev \
	neovim

RUN alias vi="nvim"
RUN alias vim="nvim"

RUN mkdir -p "$HOME/.config/nvim"

COPY ./init.vim /tmp/init.vim
RUN cat /tmp/init.vim > ~/.config/nvim/init.vim && \
	sudo rm /tmp/init.vim

RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN nvim +PlugInstall +qall

RUN curl -L -o "/tmp/tmux-$TMUX_VERSION.tar.gz" \
		"https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/$TMUX_TAR"

WORKDIR /tmp

RUN tar xzf "$TMUX_TAR" -C /tmp

WORKDIR "/tmp/tmux-$TMUX_VERSION"

RUN ./configure

RUN make

RUN sudo make install

WORKDIR /home/$DOCKER_USER

COPY ./.tmux.conf /tmp/.tmux.conf
RUN cat /tmp/.tmux.conf > ~/.tmux.conf && \
	sudo rm /tmp/.tmux.conf

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

ENV NVM_DIR /home/$DOCKER_USER/.nvm

RUN . "$NVM_DIR/nvm.sh" && \
	nvm install --lts && \
	nvm alias default stable

RUN sudo pip3 install --upgrade pip && \
	sudo pip3 install neovim

RUN . "$NVM_DIR/nvm.sh" && \
    python3 "$HOME/.config/nvim/plugged/YouCompleteMe/install.py" \
    --js-completer

RUN echo '{"plugins": {"node": {}}}' > ~/.tern-config