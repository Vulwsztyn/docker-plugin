function dsta
  docker stop $(docker ps -q)
end