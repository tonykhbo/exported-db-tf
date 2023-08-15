terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "1.23.0"
    }
  }
}

provider "databricks" {
}