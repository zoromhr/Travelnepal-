FROM python:3.7

ADD requirements.txt /app/requirements.txt

WORKDIR /app
RUN apt-get -y update
RUN pip install -r requirements.txt
RUN apt-get install -y nano neovim curl
COPY . /app
EXPOSE 8000
ENTRYPOINT ["python"]
CMD ["python3", "manage.py","runserver","0.0.0.0:8000" ]