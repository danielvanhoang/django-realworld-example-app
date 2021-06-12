FROM python:3.10.0b1-slim-buster
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN pip install honeycomb-beeline
RUN pip install -U setuptools
COPY manage.py /app
COPY conduit /app/conduit
RUN mkdir /app/static
ENTRYPOINT [ "python" ]
CMD [ "manage.py" ]