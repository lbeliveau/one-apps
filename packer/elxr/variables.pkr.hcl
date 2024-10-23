variable "appliance_name" {
  type    = string
  default = "debian"
}

variable "version" {
  type    = string
  default = "12"
}

variable "input_dir" {
  type = string
}

variable "output_dir" {
  type = string
}

variable "headless" {
  type    = bool
  default = false
}

variable "elxr" {
  type = map(map(string))

  default = {
    "12" = {
      iso_url      = "https://downloads.elxr.dev/elxr-12.6.1.0-amd64-CD-1.iso"
      iso_checksum = "file:https://downloads.elxr.dev/elxr-12.6.1.0-amd64-CD-1.iso.sha256"
    }
  }
}
