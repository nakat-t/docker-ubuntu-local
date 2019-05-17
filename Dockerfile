FROM ubuntu:18.04
LABEL maintainer="nakat-t <armaiti.wizard@gmail.com>"

# https://serverfault.com/questions/949991/how-to-install-tzdata-on-a-ubuntu-docker-image
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
		build-essential \
		curl \
		gcc-multilib \
		g++-multilib \
		gcc-5 \
		g++-5 \
		gcc-5-multilib \
		g++-5-multilib \
		gcc-7 \
		g++-7 \
		gcc-7-multilib \
		g++-7-multilib \
		gcc-8 \
		g++-8 \
		gcc-8-multilib \
		g++-8-multilib \
		libpulse-dev \
		xutils-dev \
		make \
		patch \
		unzip \
		p7zip-full \
		cloc \
		bsdtar \
		git-all \
		subversion \
		python \
		python-svn \
		ruby \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /data
WORKDIR /data
