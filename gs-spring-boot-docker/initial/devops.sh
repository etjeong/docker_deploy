#!/bin/bash

OPTION=$1
SCRIPT_PATH=$(dirname $(readlink -f $0));
EXIST_BLUE=$(docker service ls | egrep "blue_app" | awk '{print $2}' | wc -l);

cleanContainer() {
	sleep 10 && docker rm $(docker ps -q -f status=exited) > /dev/null 2>&1;
}

help() {
	echo "Usae : $0 {start|stop|restart|build|deploy}";
	exit 0;
}

stop() {
	docker stack down blue green && cleanContainer;
}

start() {
	SERVICE_UP=$(docker service ls | egrep "blue_app|green_app" | awk '{print $2}' | wc -l);
	if [ $SERVICE_UP -eq 0 ]; then
		docker stack up --compose-file ${SCRIPT_PATH}/docker-compose-blue.yml blue;
	else
		echo "Service is running now"
	fi
}

restart() {
	if [ $EXIST_BLUE -eq 1 ]; then
		docker service update --force blue_app && cleanContainer;
	else
		docker service update --force green_app && cleanContainer;
	fi
}

build() {
        ${SCRIPT_PATH}/gradlew build docker;
}

deploy() {
	if [ $EXIST_BLUE -eq 1 ]; then
		echo "Deploy green zone"
                docker stack deploy --compose-file ${SCRIPT_PATH}/docker-compose-green.yml green && sleep 10 && docker stack rm blue && cleanContainer;
	else
		echo "Deploy blue zone"
                docker stack deploy --compose-file ${SCRIPT_PATH}/docker-compose-blue.yml blue && sleep 10 && docker stack rm green && cleanContainer;
	fi
}

case ${OPTION} in  
	start)
        	start
        	;;
	stop)
        	stop
        	;;
	restart) 
        	restart
		;;
	build)
		build
		;;
	deploy)
		deploy
		;;
	help|*)
    		help
		;;
esac


