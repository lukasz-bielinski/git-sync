FROM gcr.io/google_containers/ubuntu-slim:0.1

ENV GIT_SYNC_DEST /git
VOLUME ["/git"]

RUN apt-get update && \
  apt-get install -y git ssh ca-certificates bash vim --no-install-recommends && \
  apt-get clean -y && \
  rm -rf /var/lib/apt/lists/*

COPY git-sync /git-sync
ADD script.sh script.sh
RUN chmod +x script.sh

RUN mkdir /nonexistent && chmod 777 /nonexistent

ENTRYPOINT ["/script.sh"]
