FROM tomcat

ARG index

RUN ln -s ../webapps.dist/ROOT/ webapps/ROOT
# RUN apt-get update -y
# RUN apt-get install -y vim

EXPOSE 8080

CMD ["catalina.sh", "run"]
