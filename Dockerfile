FROM redis

RUN apt-get update

RUN apt-get install -y \
	make \
	wget \
	gcc \
	libevent-dev \
	unzip

RUN wget -O webdis.zip https://github.com/nicolasff/webdis/archive/0.1.1.zip && unzip webdis.zip -d /

ADD run-webdis.sh /tmp/

ADD webdis.json /tmp/

RUN cd /webdis-0.1.1/ && make && make install && cd ..

RUN rm -rf /webdis-0.1.1/ webdis.zip

RUN chmod a+x /tmp/run-webdis.sh

RUN apt-get remove -y wget make gcc

EXPOSE 7379

CMD ["/tmp/run-webdis.sh"]