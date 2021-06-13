FROM python:3.8-slim-buster
ENV CONDUIT_SECRET='something-really-secret'
ENV FLASK_APP=autoapp.py
ENV FLASK_DEBUG=1
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
RUN flask db init
RUN flask db migrate
RUN flask db upgrade
CMD [ "flask run --with-threads"]