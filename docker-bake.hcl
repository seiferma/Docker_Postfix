variable "VERSION" {
  # renovate: datasource=repology depName=alpine_3_22/postfix versioning=loose
  default = "3.10.4-r0"
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
