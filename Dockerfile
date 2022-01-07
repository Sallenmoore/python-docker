FROM python:3.10-alpine3.15

#Environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE=1
ENV APP_NAME="python-app"

COPY ./src /var/src/

COPY ./requirements.txt /var/requirements.txt

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r /var/requirements.txt

ENV WORKING_DIRECTORY="/var/src"
WORKDIR ${WORKING_DIRECTORY}

CMD ["python", "/usr/src/main.py"]
