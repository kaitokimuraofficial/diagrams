FROM python:3.11-bullseye

RUN apt-get update && apt-get install -y \
  git \
  graphviz \
  sudo \
  vim

WORKDIR /app

COPY scripts/init.sh /app/scripts/init.sh
COPY requirements.txt /app/requirements.txt

RUN chmod +x /app/scripts/init.sh

ENTRYPOINT ["/bin/sh", "-c", "./scripts/init.sh"]
