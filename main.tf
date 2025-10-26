terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "3.6.2"
        }
    }
}

provider "docker" {
}

# Pull your image from Docker Hub
resource "docker_image" "my_app" {
  name = "madandhungel/my-app:latest"
}

# Run a container using that image
resource "docker_container" "my_app" {
  name  = "my-app-server"
  image = docker_image.my_app.image_id

  ports {
    internal = 3000
    external = 3000
  }
}