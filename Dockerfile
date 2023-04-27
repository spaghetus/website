FROM rust AS builder
RUN cargo install --git https://github.com/spaghetus/wwebs --rev 51c13e6a4bedfe02a6bf964ed92b9d3e844ea3a4 && \
	cp $(which wwebs) /wwebs

FROM node
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y pandoc texlive-latex-recommended && rm -rf /var/lib/apt/lists
RUN npm i -g handlebars
COPY --from=builder /wwebs /bin/wwebs
WORKDIR /wsrc
CMD wwebs -h 8000