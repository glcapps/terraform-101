terraform {
    required_providers {
        docker = {
            source  = "kreuzwerker/docker"
            version = "~> 2.17.0"
        }
    }
}
provider "docker" {
  #host = "unix:///var/run/docker.sock"
  host    = "npipe:////.//pipe//docker_engine"
}
# docker_container.arbitrarylabel:
resource "docker_container" "arbitrarylabel" {
    command           = [
        "/opt/mssql/bin/sqlservr",
    ]
    cpu_shares        = 0
    dns               = []
    dns_opts          = []
    dns_search        = []
    entrypoint        = [
        "/opt/mssql/bin/permissions_check.sh",
    ]
    # exit_code         = 137
    group_add         = []
    hostname          = "538ebf573fff"
    id                = "538ebf573fff2b57c9558864f6361bfed89fb8e47104235ca0bb13e15c8469f8"
    image             = "sha256:880c02b9631c5813e3e5d0ed8cb0aaca6db059311d41d199dd0409b7850410ef"
    init              = false
    ip_prefix_length  = 0
    ipc_mode          = "private"
    links             = []
    log_driver        = "json-file"
    log_opts          = {}
    max_retry_count   = 0
    memory            = 0
    memory_swap       = 0
    name              = "sql"
    network_mode      = "default"
    privileged        = false
    publish_all_ports = false
    read_only         = false
    restart           = "no"
    rm                = false
    security_opts     = []
    shm_size          = 64
    stdin_open        = false
    storage_opts      = {}
    sysctls           = {}
    tmpfs             = {}
    tty               = false
    user              = "mssql"
}
