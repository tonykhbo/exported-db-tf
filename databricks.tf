terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "1.16.0"
    }
  }
}

provider "databricks" {
}
     