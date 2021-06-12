FROM python:3.8-slim-buster
ENV CONDUIT_SECRET='something-really-secret'
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD [ "flask db init" ]
CMD [ "flask db migrate" ]
CMD [ "flask db upgrade" ]
CMD [ "flask run --with-threads" ]