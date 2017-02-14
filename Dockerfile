FROM python:2-alpine

COPY sample_project/ /app

WORKDIR /app

COPY . /tmp/django-watchman

RUN pip install -e /tmp/django-watchman

CMD python manage.py watchman
