resource "databricks_permissions" "directory_shared_1139067199598197" {
  directory_id = data.databricks_directory.shared_1139067199598197.object_id
  access_control {
    permission_level = "CAN_MANAGE"
    group_name       = data.databricks_group.users_373151647459688.display_name
  }
}
resource "databricks_permissions" "directory_users_1032116972995739" {
  directory_id = data.databricks_directory.users_1032116972995739.object_id
  access_control {
    service_principal_name = databricks_service_principal.rf92099f421d.application_id
    permission_level       = "CAN_MANAGE"
  }
}
