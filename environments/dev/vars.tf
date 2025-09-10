variable "gcp" {
  type = object({
    project = string
    region  = string
  })

  default = {
    project = "peppy-goods-471518-m1"
    region  = "us-central1-a"
  }
}

variable "GCP_CREDENTIALS" {
  type      = string
  sensitive = true
}
