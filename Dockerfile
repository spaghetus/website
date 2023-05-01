FROM rust AS builder
RUN cargo install --git https://github.com/spaghetus/wwebs --rev 51c13e6a4bedfe02a6bf964ed92b9d3e844ea3a4 && \
	cp $(which wwebs) /wwebs

FROM node
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y pandoc texlive-latex-recommended && \
	wget -O /tmp/mimic.deb https://github.com/MycroftAI/mimic3/releases/download/release%2Fv0.2.4/mycroft-mimic3-tts_0.2.4_amd64.deb && \
	apt-get install -y /tmp/mimic.deb && \
	rm -rf /var/lib/apt/lists /tmp/mimic.deb
RUN mimic3 --preload-voice en_US/cmu-arctic_low
RUN npm i -g handlebars
COPY --from=builder /wwebs /bin/wwebs
WORKDIR /wsrc
CMD wwebs -h 8000