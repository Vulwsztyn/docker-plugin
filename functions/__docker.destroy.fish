function __docker.destroy
  for ab in $__docker_plugin_abbreviations
      abbr -e $ab
  end
  set -Ue __docker_plugin_abbreviations
  set -Ue __docker_plugin_initialized
end