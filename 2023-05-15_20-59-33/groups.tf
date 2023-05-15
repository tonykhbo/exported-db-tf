data "databricks_group" "admins_948737816221583" {
  display_name = "admins"
}
resource "databricks_group_member" "admins_948737816221583_tony_bo" {
  member_id = databricks_user.tony_bo.id
  group_id  = data.databricks_group.admins_948737816221583.id
}
