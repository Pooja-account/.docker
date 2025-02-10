FROM python 
RUN apt update -y
RUN apt install -y python3-pip \
    python-dev build essential apt-utils
COPY ./app
WORKDIR /app
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN chmod +x startup.sh

ENTRYPOINT ["/bin/bash", "startup.sh"]
