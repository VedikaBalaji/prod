FROM debian:stable
LABEL authors="devopst1"
RUN apt-get update && apt-get install -y --force-yes apache2
RUN mkdir /myapp
WORKDIR /myapp
COPY date.sh .
ADD https://raw.githubusercontent.com/VedikaBalaji/DevOps_Labs/refs/heads/main/testfile.txt ./balaji.txt
RUN chmod 777 date.sh
ENV MYAPP=/myapp
WORKDIR /myapp
CMD [ "./date.sh" ]
ENTRYPOINT [ "ls" ]