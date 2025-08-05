FROM python:3.11.4

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

COPY ./src/ /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-venv \
    python3-dev \
    python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/python -m pip install --upgrade pip

RUN  install -r requirements.txt

CMD ["/opt/venv/bin/python", "-m", "http.server", "8080"]