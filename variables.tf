variable "azregion" {
  description = "The Azure region where the resources will be deployed."
  type        = string
  default     = "West Europe"
}

variable "rgname" {
  type    = string
  default = "example-resources"
}

variable "storageaccount" {
  type = string
}

variable "containername" {
  type    = string
  default = "tf-container"
}

variable "blobname" {
  type    = string
  default = "archive.zip"
}