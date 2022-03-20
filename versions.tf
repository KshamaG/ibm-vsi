
terraform {
  required_version = ">= 0.13"
  required_providers {
    ibm = {
      # TF-UPGRADE-TODO
      #
      # No source detected for this provider. You must add a source address
      # in the following format:
      #
      source = "IBM-Cloud/ibm"
      #
      # For more information, see the provider source documentation:
      #
      # https://www.terraform.io/docs/configuration/providers.html#provider-source
    }
  }
}
