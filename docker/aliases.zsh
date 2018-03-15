alias docker-rm-exited="docker ps -aq --no-trunc | xargs docker rm"
alias docker-rm-dangle="docker images -q --filter dangling=true | xargs docker rmi"
