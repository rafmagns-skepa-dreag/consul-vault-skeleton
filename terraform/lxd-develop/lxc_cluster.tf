resource "lxd_container" "cluster_node" {
  count     = 3
  name      = "consul-vault-${count.index}"
  image     = "images:centos/7"
  ephemeral = false

  config = {
    "boot.autostart" = true
  }
}