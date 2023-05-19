data "databricks_directory" "shared_1139067199598197" {
  path = "/Shared"
}
resource "databricks_directory" "tony_bo_databricks_com_1032116972995741" {
  path = "/tony.bo@databricks.com"
}
resource "databricks_notebook" "tony_bo_databricks_com_test_1032116972995742" {
  source = "${path.module}/notebooks/tony.bo@databricks.com/test.py"
  path   = "/tony.bo@databricks.com/test"
}
data "databricks_directory" "users_1032116972995739" {
  path = databricks_service_principal.rf92099f421d.home
}
data "databricks_directory" "users_1139067199598196" {
  path = "/Users"
}
data "databricks_directory" "users_tony_bo_databricks_com_1139067199598198" {
  path = databricks_user.tony_bo.home
}
resource "databricks_notebook" "users_tony_bo_databricks_com_nfs_test_1139067199598208" {
  source = "${path.module}/notebooks/Users/tony.bo@databricks.com/nfs-test.py"
  path   = "${databricks_user.tony_bo.home}/nfs-test"
}
