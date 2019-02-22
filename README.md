### 환경
OS : Red Hat Enterprise Linux Server release 7.3
Docker Version : 18.09.0
Docker Compose Version : 1.23.2
Gradle 5.2.1
JDK : openjdk version 1.8.0_192

### 구성
<img src="https://user-images.githubusercontent.com/10379601/29446482-04f7036a-841f-11e7-9872-91d1fc2ea683.png" height="200" align="right">

### Install
```bash
git clone https://github.com/etjeong/docker_deploy.git
```


### 웹서버 Nginx 스크립트
```bash
$ /docker_deploy/nginx/start.sh
$ /docker_deploy/nginx/stop.sh
```

### 배포 스크립트
```bash
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh stop
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh start
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh restart
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh build
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh deploy
```
