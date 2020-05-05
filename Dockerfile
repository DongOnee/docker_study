FROM jenkins/jenkins

USER root

# RUN usermod -aG docker go

#DIND(docker in docker)를 위해 docker 안에서 docker를 설치 
COPY jenkins/docker_install.sh /docker_install.sh 
RUN chmod +x /docker_install.sh 
RUN /docker_install.sh 

RUN usermod -aG docker jenkins 
# USER jenkins