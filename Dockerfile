FROM python:3.8-slim-buster
ENV CONDUIT_SECRET='something-really-secret'
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
RUN flask db init
RUN flask db migrate
RUN flask db upgrade
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]