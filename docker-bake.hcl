variable "VERSION" {
  default = "3.8.3-r0"
}

group "default" {
  targets = ["default"]
}

target "default" {
  tags = ["quay.io/seiferma/postfix:${VERSION}", "quay.io/seiferma/postfix:latest"]
  args = {
    POSTFIX_VERSION = "${VERSION}"
  }
}
