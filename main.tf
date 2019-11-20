variable "images" {
  type = "map"
  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}

variable "zones" {
  type    = "list"
  default = ["us-east-1a", "us-east-1b"]
}

variable "access_key" {
  type = "string"
}
variable "secret_key" {
  type = "string"

}
variable "region" {
  type    = "string"
  default = "us-east-1"
}

provider "aws" {
  region   = "${var.region}"
  image_id = "${var.images.us-east-1}"
  zone     = "${var.zones[0]}"

}

