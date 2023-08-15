resource "databricks_cluster" "shasidhar_dev_cluster_0810_094321_3j8qu522" {
  spark_version = "12.2.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.cluster.profile"       = "singleNode"
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.master"                           = "local[*, 4]"
  }
  single_user_name    = "shasidhar.eranti@databricks.com"
  runtime_engine      = "STANDARD"
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  data_security_mode  = "LEGACY_SINGLE_USER_STANDARD"
  custom_tags = {
    ResourceClass = "SingleNode"
  }
  cluster_name = "Shasidhar dev cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
}
resource "databricks_cluster" "shasidhar_erantis_cluster_0810_115652_38i8xxjb" {
  spark_version = "12.2.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  single_user_name    = "shasidhar.eranti@databricks.com"
  runtime_engine      = "STANDARD"
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  data_security_mode  = "SINGLE_USER"
  cluster_name        = "Shasidhar Eranti's Cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
  autoscale {
    min_workers = 1
    max_workers = 8
  }
}
resource "databricks_cluster" "tony_bos_cluster_0725_192405_4t5nwqc" {
  spark_version = "12.2.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.cluster.profile"       = "singleNode"
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.master"                           = "local[*, 4]"
  }
  single_user_name    = "tony.bo@databricks.com"
  runtime_engine      = "STANDARD"
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  data_security_mode  = "LEGACY_SINGLE_USER_STANDARD"
  custom_tags = {
    ResourceClass = "SingleNode"
  }
  cluster_name = "Tony Bo's Cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 10
}
