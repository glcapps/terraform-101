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
    # gateway           = "172.17.0.1"
    group_add         = []
    hostname          = "d75aed591bbe"
    # id                = "d75aed591bbe354fd1187edeacfbf54b9547878336f2bcbb5dac5f7d6cad6319"
    image             = "sha256:880c02b9631c5813e3e5d0ed8cb0aaca6db059311d41d199dd0409b7850410ef"
    init              = false
    # ip_address        = "172.17.0.2"
    # ip_prefix_length  = 16
    ipc_mode          = "private"
    links             = []
    log_driver        = "json-file"
    log_opts          = {}
    max_retry_count   = 0
    memory            = 0
    memory_swap       = 0
    name              = "sql"
    /*network_data      = [
        {
            gateway                   = "172.17.0.1"
            global_ipv6_address       = ""
            global_ipv6_prefix_length = 0
            ip_address                = "172.17.0.2"
            ip_prefix_length          = 16
            ipv6_gateway              = ""
            network_name              = "bridge"
        },
    ]
    */
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

    upload {
        content = ""
        file = "/var/sample.txt"
    }
    ports {
        external = 1433
        internal = 1433
        ip       = "0.0.0.0"
        protocol = "tcp"
    }
}


