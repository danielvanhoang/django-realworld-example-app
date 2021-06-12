FROM python:3.10.0b1-slim-buster
COPY ./requirements.txt /requirements.txt
WORKDIR /
RUN pip3 install -r requirements.txt
RUN pip install honeycomb-beeline
RUN pip install -U setuptools
COPY test.py /
COPY manage.py /
COPY conduit /
COPY project-logo.png /
#RUN mkdir /app/static
ENTRYPOINT [ "python" ]
CMD [ "manage.py" ]