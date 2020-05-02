docker rmi mytomcat mynginx

docker build --rm --no-cache -t mytomcat tomcat
docker build --rm --no-cache -t mynginx nginx