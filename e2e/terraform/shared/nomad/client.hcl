client {
  enabled = true

  options {
    # Allow jobs to run as root
    "user.blacklist" = ""

    # Allow rawexec jobs
    "driver.raw_exec.enable" = "1"

    # Allow privileged docker jobs
    "docker.privileged.enabled" = "true"
  }

  host_volume "shared_data" {
    path = "/tmp/data"
  }
}

vault {
  enabled = true
  address = "http://active.vault.service.consul:8200"
}
