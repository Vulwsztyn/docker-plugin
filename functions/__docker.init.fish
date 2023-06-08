function __docker.init
  function __docker.create_abbr -d "Create Docker Compose plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    # global scope abbr is default in fish 3.6.0+
    abbr -a -g $name $body

    set -a __docker_plugin_abbreviations $name
  end

  # Provide a smooth transition from universal to global abbreviations by
  # deleting the old univeral ones.  Can be removed after fish 3.6 is in
  # wide-spread use, i.e. 2024. __docker.destroy should also be removed
  # at the same time.
  if set -q __docker_plugin_initialized
    __docker.destroy
  end

  
  # kubectl abbreviations

  # This command is used a LOT both below and in daily life
  
  __docker.create_abbr dc docker 
  __docker.create_abbr dbl docker build
  __docker.create_abbr dcin docker container inspect
  __docker.create_abbr dcls docker container ls
  __docker.create_abbr dclsa docker container ls -a
  __docker.create_abbr dib docker image build
  __docker.create_abbr dii docker image inspect
  __docker.create_abbr dils docker image ls
  __docker.create_abbr dipu docker image push
  __docker.create_abbr dirm docker image rm
  __docker.create_abbr dit docker image tag
  __docker.create_abbr dlo docker container logs
  __docker.create_abbr dnc docker network create
  __docker.create_abbr dncn docker network connect
  __docker.create_abbr dndcn docker network disconnect
  __docker.create_abbr dni docker network inspect
  __docker.create_abbr dnls docker network ls
  __docker.create_abbr dnrm docker network rm
  __docker.create_abbr dpo docker container port
  __docker.create_abbr dpu docker pull
  __docker.create_abbr dr docker container run
  __docker.create_abbr drit docker container run -it
  __docker.create_abbr drm docker container rm
  __docker.create_abbr drm! docker container rm -f
  __docker.create_abbr dst docker container start
  __docker.create_abbr drs docker container restart
  __docker.create_abbr dstp docker container stop
  __docker.create_abbr dtop docker top
  __docker.create_abbr dvi docker volume inspect
  __docker.create_abbr dvls docker volume ls
  __docker.create_abbr dvprune docker volume prune
  __docker.create_abbr dxc docker container exec
  __docker.create_abbr dxcit docker container exec -it

  # Cleanup declared functions
  functions -e __docker.create_abbr
end
