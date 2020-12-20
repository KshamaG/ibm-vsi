variable "hostname1" {
    default = "vm1"
}

variable "domain1" {
    default = "vm-dev-example.com"
}

variable "tags1" {
    type    = set(string)
    default = ["env:dev", "region:us-south"]
}

variable "hostname2" {
    default = "vm2"
}

variable "domain2" {
    default = "vm-test-example.com"
}

variable "tags2" {
    type    = set(string)
    default = ["env:test", "region:us-south"]
}

variable "hostname3" {
    default = "vm3"
}

variable "domain3" {
    default = "vm-prod-example.com"
}

variable "tags3" {
    type    = set(string)
    default = ["env:prod", "region:us-south"]
}
