FROM redis

RUN apt-get update

RUN apt-get install -y \
	make \
	git-core \
	build-essential \
	gcc \
	libevent-dev

RUN git clone https://github.com/nicolasff/webdis.git /webdis

ADD run-webdis.sh /

ADD webdis.json /webdis/webdis.json

RUN chmod a+x /run-webdis.sh

EXPOSE 7379

CMD ["/run-webdis.sh"]