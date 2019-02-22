# 환경
OS : Red Hat Enterprise Linux Server release 7.3
Docker Version : 18.09.0
Docker Compose Version : 1.23.2
Gradle 5.2.1
JDK : openjdk version 1.8.0_192

# Install
$ git clone https://github.com/etjeong/docker_deploy.git

# 웹서버 Nginx 스크립트
$ /docker_deploy/nginx/start.sh
$ /docker_deploy/nginx/stop.sh

# 배포 스크립트
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh stop
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh start
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh restart
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh build
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh deploy
