FROM ubuntu:latest
ENV MY_NAME="Anthony Gonsalves"
RUN apt-get -y update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install flask
#RUN apt-get -y install git
#RUN MY_NAME="Anthony Gonsalves"
COPY app.py /tmp/.
ENTRYPOINT [ "python3" ]
CMD [ "/tmp/app.py" ]
#EXPOSE 80
