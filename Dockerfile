FROM tutum/ubuntu:vivid
MAINTAINER heymind

RUN apt-get update \
  && apt-get install -y python-dev python-pip python3-dev \
  python3-pip curl software-properties-common sudo git

RUN add-apt-repository -y ppa:neovim-ppa/unstable \
  && apt-get update \
  && apt-get install -y neovim
  
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - \
  &&apt-get install -y nodejs

RUN npm install wetty -g 


#RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh



#RUN mkdir workspace && cd workspace \
#	&& git clone https://github.com/heymind/my-vim.git \
#	&& cd my-vim && ./setup && nvim -c "PlugClean|PlugInstall|q|q"

EXPOSE 4000
EXPOSE 5000
ADD setup.sh /setup.sh
RUN chmod +x  /setup.sh

CMD ["/setup.sh"]
