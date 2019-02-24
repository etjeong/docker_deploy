### 과제
웹 어플리케이션을 Docker 를 통해 서비스 하려합니다. 다음 요구사항에 부합하도록 설정, 빌드, 실행 스크립트를 구현해주세요.

### 테스트 환경
- OS : Red Hat Enterprise Linux Server release 7.3
- Docker Version : 18.09.0
- Docker Compose Version : 1.23.2
- Gradle 5.2.1
- JDK : openjdk version 1.8.0_192

### 구성
<img src="https://user-images.githubusercontent.com/10379601/29446482-04f7036a-841f-11e7-9872-91d1fc2ea683.png" height="200" align="center">

### 설치
```bash
$ git clone https://github.com/etjeong/docker_deploy.git
```

### 웹서버 Nginx 컨테이너 기동
```bash
$ /docker_deploy/nginx/start.sh
$ /docker_deploy/nginx/stop.sh
```

### 웹어플리케이션 배포 스크립트
$ devops.sh [start|stop|restart|build|deploy]
- start : 컨테이너 환경 전체 실행
- stop : 컨테이너 환경 전체 중지
- restart : 컨테이너 환경 전체 재시작
- build : 웹어플리케이션 빌드
- deploy : 웹어플리케이션 무중단 배포

```bash
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh start
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh stop
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh restart
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh build
$ /docker_deploy/gs-spring-boot-docker/initial/devops.sh deploy
```
