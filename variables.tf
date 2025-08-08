variable "azregion" {
  type    = string
  default = "West Europe"
}

variable "rgname" {
  type    = string
  default = "example-resources"
}

variable "storageaccount" {
  type    = string
  default = "examplestorageacc"
}

variable "containername" {
  type    = string
  default = "tf-container"
}

variable "blobname" {
  type    = string
  default = "archive.zip"
}