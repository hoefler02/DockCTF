FROM ubuntu
MAINTAINER Michael Hoelfer <hoefler2002@gmail.com>

RUN \
	dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y \
		cmake \
		ipython3 \
		vim \
		net-tools \
		python3-pip \
		build-essential \
		tmux \
		screen \
		strace \
		ltrace \
		wget \
		radare2 \
		gdb \
		netcat \
		git \
		file \
		unzip \
		gcc-multilib \
		fish

RUN \
	python3 -m pip install -U pip && \
	python3 -m pip install \
		pwntools \
		pycryptodome \
		requests \
		scapy \
	python -m pip install \
		pwntools


RUN \
	git clone https://github.com/apogiatzis/gdb-peda-pwndbg-gef.git /opt/gdb-peda-pwndbg-gef && \
	cd /opt/gdb-peda-pwndbg-gef/ && \
	sed -i -e 's/sudo //g' /opt/gdb-peda-pwndbg-gef/install.sh && \
	sed -i -e 's/cp /cp \/opt\/gdb-peda-pwndbg-gef\//g' /opt/gdb-peda-pwndbg-gef/install.sh && \
	./install.sh && \
	printf "\nset disassembly-flavor intel\n" >> /root/.gdbinit && \
	printf "set prompt \033[1;31m(gdb) \033[m" >> /root/.gdbinit

RUN chsh -s /usr/bin/fish root


