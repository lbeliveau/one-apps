variable "appliance_name" {
  type    = string
  default = "rhel"
}

variable "version" {
  type    = string
  default = "8"
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

variable "rhel_user" {
  type    = string
  default = false
}

variable "rhel_password" {
  type    = string
  default = false
}

variable "rhel" {
  type = map(map(string))

  default = {
    "8" = {
      iso_url      = ""
      iso_checksum = ""
    }

    "9" = {
      iso_url      = "rhel-9.4-x86_64-kvm.qcow2"
      iso_checksum = "d362e72518a2d7415d850b8177c814f6fd87f42ca1640bda17e98855e1d6baad"
    }
  }
}
