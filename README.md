# variables_skills_map_tf
This Repo contains TF examples for variables 

## What is this Repo for

This repo shows how to use variables in your Terraform code by using an example
There are a number of ways to specify the variables and the interpolate them in the code

```
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

variable "region" {
  type    = "string"
  default = "us-east-1"
}
```
Map,list,string and number are types of variables
For the map and list type one variable can relate to two different values.To point outthe correct one you use this syntax

`var.images.us-east-1` this relates to  `image-1234`

`var.zones[0]` this relates to `us-east-1a`

## How to use it

```
provider "aws" {
  region   = "${var.region}"
  image_id = "${var.images.us-east-1}"
  zone     = "${var.zones[0]}"

}
```

this code shows how to use the variables to deploy the infrastructure using the variables

This will not do much by itself but the same logic can be applied whne using code to deploy a AWS resource


