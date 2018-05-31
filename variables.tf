variable "location" {
    description = "The Azure Region in which the Resource Group exists"
}

variable "rg_name" {
    description = "The name of the Resource Group where VM resources will be created"
}

variable "subnet_id" {
    description = "The Subnet ID which the VM's NIC should be created in"
}

variable "name" {
    description = "The Prefix used for the VM's resources and for the VM hostname"
}

variable "size" {
    description = "The VM model"
}

variable "network" {
    description = "The network to allocate static IP"
}

variable "start_ip" {
    description = "Where the IP allocation begin for static private IP"
}

variable "subdomain" {
    description = "The subdomain to use for public FQDN"
}


variable "active_directory_domain" {
  description = "The name of the Active Directory domain, for example `consoto.local`"
}

variable "active_directory_netbios_name" {
  description = "The netbios name of the Active Directory domain, for example `consoto`"
}

variable "admin_username" {
  description = "The username associated with the local administrator account on the virtual machine"
}

variable "admin_password" {
  description = "The password associated with the local administrator account on the virtual machine"
}

variable "extra_powershell" {
  description = "Launch extra powershell script after provisionning AD like users / groups creation"
  default = ""
}

variable "tags" {
    description = "List of tags should be associated on all ressoruces"
    type = "map"
    default = {
        module = "module-azure-ad"
    }
}