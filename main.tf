resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx_image.latest


ports {
    internal = "80"
    external = "8090"
  }
}

resource "docker_image" "nginx_image" {
  name = "nginx"
}

