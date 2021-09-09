FROM python:3.8.12-slim

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    tmux \
    nano \
    htop

RUN pip install numpy

WORKDIR /workspace
COPY project/* project/

CMD ["/bin/bash"]