resource "proxmox_vm_qemu" "main" {
  name        = var.name
  target_node = var.target_node
  vmid        = var.vmid
  clone       = var.clone
  memory      = var.memory
  os_type     = var.os_type
  scsihw      = var.scsihw

  disk {
    type    = var.disk_type
    storage = var.disk_storage
    size    = var.disk_size
  }

  ciuser     = var.ciuser
  cipassword = var.cipassword
  ipconfig0  = var.ipconfig
}
