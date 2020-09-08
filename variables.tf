variable "resource_group" {
    type = string
    description = "Name of the resource group to create"
    default = "aksrg"
}

variable "location" {
    type = string
    description = "Location of the resources"
    default = "West Europe"
}

variable "node_count_linux" {
    type = number
    description = "Number of Linux nodes"
    default = 1
}

variable "node_count_windows" {
    type = number
    description = "Number of Windows nodes"
    default = 1
}