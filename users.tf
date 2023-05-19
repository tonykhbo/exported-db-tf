resource "databricks_service_principal" "rf92099f421d" {
  force          = true
  application_id = "518c62e4-c733-4fd3-8030-5b57950ed4b2"
  active         = true
}
resource "databricks_user" "tony_bo" {
  user_name                  = "tony.bo@databricks.com"
  force                      = true
  allow_instance_pool_create = true
  allow_cluster_create       = true
}
