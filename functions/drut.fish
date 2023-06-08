function drut
  docker container run -it -v $(pwd):/app -w /app
end