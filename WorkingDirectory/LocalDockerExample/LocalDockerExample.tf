terraform {
    required_providers {
        docker = {
            source  = "kreuzwerker/docker"
            version = "~> 2.17.0"
        }
    }
}
resource "docker_container" "arbitrarylabel" {

}