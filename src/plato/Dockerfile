FROM python:3.7

ENV BIND_PORT 8000

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
RUN apt-get update && \
    apt-get install -y supervisor

RUN pip install --upgrade pip
RUN pip install pipenv
COPY ./Pipfile /code/Pipfile
RUN pipenv install --deploy --system --skip-lock --dev

# Setup all the configfile
COPY supervisor-app.conf /etc/supervisor/conf.d/

EXPOSE $BIND_PORT

# Copy project
COPY . /code/

# Execute UWSGI
CMD ["supervisord", "-n"]