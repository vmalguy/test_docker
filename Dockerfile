FROM debian:stable

RUN apt-get update
RUN apt-get install -y python  wget python-pip libmysqlclient-dev python-dev
RUN pip install mysql-python

RUN wget http://${url_download}${file_to_launch}

CMD python  ${file_to_launch}
