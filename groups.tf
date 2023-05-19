data "databricks_group" "admins_948737816221583" {
  display_name = "admins"
}
resource "databricks_group_member" "admins_948737816221583_518c62e4_c733_4fd3_8030_5b57950ed4b2" {
  member_id = databricks_service_principal.rf92099f421d.id
  group_id  = data.databricks_group.admins_948737816221583.id
}
resource "databricks_group_member" "admins_948737816221583_tony_bo" {
  member_id = databricks_user.tony_bo.id
  group_id  = data.databricks_group.admins_948737816221583.id
}
