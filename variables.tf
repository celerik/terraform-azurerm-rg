variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "name" {
  type        = string
  description = "The name of the resource group"
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to apply to the resource group"
  default     = {}
}
