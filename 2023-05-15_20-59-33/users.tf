resource "databricks_user" "tony_bo" {
  user_name                  = "tony.bo@databricks.com"
  force                      = true
  allow_instance_pool_create = true
  allow_cluster_create       = true
}
