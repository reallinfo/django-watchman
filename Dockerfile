FROM python:2-alpine

COPY sample_project/ /app

WORKDIR /app

COPY . /tmp/django-watchman

RUN pip install -e /tmp/django-watchman
RUN pip install django\<1.7

CMD python manage.py watchman -v2
