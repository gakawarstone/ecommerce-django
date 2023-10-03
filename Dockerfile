FROM python:3.12-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /

COPY requirements.txt /

RUN pip install -r requirements.txt

COPY src src

WORKDIR /src

EXPOSE 8000

CMD ["gunicorn", "-b", "0.0.0.0:8000", "culture_site.wsgi:application"]
