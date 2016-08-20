FROM python:3

RUN apt-get update && apt-get install -y \
	liblz4-dev \
	build-essential \
	libacl1-dev

RUN pip install borgbackup
ENTRYPOINT ["borg"]
