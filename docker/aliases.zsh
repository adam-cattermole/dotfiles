alias docker-rm-exited="docker ps -aq --no-trunc | xargs docker rm"
alias docker-rm-dangle="docker images -q --filter dangling=true | xargs docker rmi"
#alias docker-stop-all="docker stop `docker ps -aq`"
docker-stop-all() {
    docker stop $(docker ps -aq)
}
#alias docker-rm-all-containers="docker rm $(docker ps -aq)"
docker-rm-all-containers() {
    docker rm $(docker ps -aq)
}
#alias docker-rm-all-images="docker rmi $(docker images -q)"
docker-rm-all-images() {
    docker rmi $(docker images -q)
}
