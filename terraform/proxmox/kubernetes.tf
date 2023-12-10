resource "proxmox_vm_qemu" "k3s-1" {
  name        = "k3s-1"
  target_node = "debian"

  memory  = 8192
  sockets = 1
  cores   = 4
  cpu     = "host"
  scsihw  = "virtio-scsi-pci"

  onboot  = true
  qemu_os = "l26"

  clone      = "ubuntu-lunar"
  os_type    = "cloud-init"
  full_clone = true
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = var.sshkeys
  ipconfig0  = "ip=192.168.1.121/24,gw=192.168.1.1"

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    type    = "scsi"
    storage = "fast"
    size    = "54784M"
  }

}

resource "proxmox_vm_qemu" "k3s-2" {
  name        = "k3s-2"
  target_node = "debian"

  memory  = 8192
  sockets = 1
  cores   = 4
  cpu     = "host"
  scsihw  = "virtio-scsi-pci"

  onboot  = true
  qemu_os = "l26"

  clone      = "ubuntu-lunar"
  os_type    = "cloud-init"
  full_clone = true
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = var.sshkeys
  ipconfig0  = "ip=192.168.1.122/24,gw=192.168.1.1"

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    type    = "scsi"
    storage = "fast"
    size    = "54784M"
  }

}

resource "proxmox_vm_qemu" "k3s-3" {
  name        = "k3s-3"
  target_node = "debian"

  memory  = 8192
  sockets = 1
  cores   = 4
  cpu     = "host"
  scsihw  = "virtio-scsi-pci"

  onboot  = true
  qemu_os = "l26"

  clone      = "ubuntu-lunar"
  os_type    = "cloud-init"
  full_clone = true
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = var.sshkeys
  ipconfig0  = "ip=192.168.1.123/24,gw=192.168.1.1"

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    type    = "scsi"
    storage = "fast"
    size    = "54784M"
  }

}

resource "proxmox_vm_qemu" "k3s-4" {
  name        = "k3s-4"
  target_node = "debian"

  memory  = 12288
  sockets = 1
  cores   = 4
  cpu     = "host"
  scsihw  = "virtio-scsi-pci"

  onboot  = true
  qemu_os = "l26"

  clone      = "ubuntu-lunar"
  os_type    = "cloud-init"
  full_clone = true
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = var.sshkeys
  ipconfig0  = "ip=192.168.1.124/24,gw=192.168.1.1"

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    type    = "scsi"
    storage = "fast"
    size    = "54784M"
  }

  disk {
    type    = "scsi"
    storage = "longhorn-1"
    size    = "953G"
  }

  hostpci {
    host = "0000:00:02"
    pcie = 1
  }

}

resource "proxmox_vm_qemu" "k3s-5" {
  name        = "k3s-5"
  target_node = "debian"

  memory  = 12288
  sockets = 1
  cores   = 4
  cpu     = "host"
  scsihw  = "virtio-scsi-pci"

  onboot  = true
  qemu_os = "l26"

  clone      = "ubuntu-lunar"
  os_type    = "cloud-init"
  full_clone = true
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = var.sshkeys
  ipconfig0  = "ip=192.168.1.125/24,gw=192.168.1.1"

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    type    = "scsi"
    storage = "fast"
    size    = "54784M"
  }

  disk {
    type    = "scsi"
    storage = "longhorn-2"
    size    = "953G"
  }

  usb {
    host = "10c4:ea60"
  }

}

resource "proxmox_vm_qemu" "k3s-6" {
  name        = "k3s-6"
  target_node = "debian"

  memory  = 12288
  sockets = 1
  cores   = 4
  cpu     = "host"
  scsihw  = "virtio-scsi-pci"

  onboot  = true
  qemu_os = "l26"

  clone      = "ubuntu-lunar"
  os_type    = "cloud-init"
  full_clone = true
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = var.sshkeys
  ipconfig0  = "ip=192.168.1.126/24,gw=192.168.1.1"

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    type    = "scsi"
    storage = "fast"
    size    = "54784M"
  }

  disk {
    type    = "scsi"
    storage = "longhorn-3"
    size    = "953G"
  }

}
