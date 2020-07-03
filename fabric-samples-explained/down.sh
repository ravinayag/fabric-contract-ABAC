source scripts/1_envsetup.sh 
docker-compose -f docker-compose-org3.yaml down -v
docker-compose -f docker-compose-cli.yaml down -v
docker-compose -f docker-compose-test.yml down -v 
docker rm $(docker ps -aq)
docker image ls | grep dev-peer | awk '{print $3}' | docker rm $1 

docker network prune -f
docker volume prune -f
docker ps -a
docker volume ls
docker network ls
