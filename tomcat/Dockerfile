FROM tomcat

ARG index

ADD ${index} webapps.dist/ROOT/index.jsp

RUN ln -s ../webapps.dist/ROOT/ webapps/ROOT
# RUN apt-get update -y
# RUN apt-get install -y vim

EXPOSE 8080

CMD ["catalina.sh", "run"]
