resource "databricks_cluster" "repos_git_proxy_1024_154128_a6jt5yv8" {
  spark_version = "12.2.x-scala2.12"
  spark_conf = {
    "spark.databricks.cluster.profile" = "singleNode"
    "spark.master"                     = "local[*]"
  }
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  custom_tags = {
    ResourceClass = "SingleNode"
  }
  cluster_name = "Repos Git Proxy"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
}
resource "databricks_cluster" "tony_bo_s_cluster_1024_153625_ju97z4me" {
  spark_version = "13.3.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  single_user_name    = "tony.bo@databricks.com"
  runtime_engine      = "PHOTON"
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  data_security_mode  = "LEGACY_SINGLE_USER_STANDARD"
  cluster_name        = "Tony Bo's Cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 20
  autoscale {
    min_workers = 2
    max_workers = 8
  }
}
