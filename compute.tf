resource "databricks_cluster" "tony_bos_cluster_0419_175553_p0tvaicz" {
  spark_version = "10.4.x-scala2.12"
  spark_conf = {
    "spark.databricks.cluster.profile"       = "singleNode"
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.master"                           = "local[*, 4]"
  }
  single_user_name    = databricks_user.tony_bo.user_name
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
