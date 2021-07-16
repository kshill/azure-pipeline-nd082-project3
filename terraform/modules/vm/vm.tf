resource "azurerm_network_interface" "project_ni" {
  name                = "${var.name}-vnet"
  location            = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip_address
  }
}

resource "azurerm_linux_virtual_machine" "azurelinux_vm" {
  name                = "${var.name}-vm"
  location            = var.location
  resource_group_name = var.resource_group
  size                = var.size
  admin_username      = var.admin_username
  network_interface_ids = [azurerm_network_interface.project_ni.id]
  admin_ssh_key {
    username   = var.admin_username
    public_key = file("~/.ssh/id_rsa_project3.pub")
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
