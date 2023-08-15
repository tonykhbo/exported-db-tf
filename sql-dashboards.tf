resource "databricks_sql_dashboard" "nyc_trips_dashboard_8a395628_d76a_48da_ae68_b338ca03b857" {
  parent = "folders/3705069258112404"
  name   = "nyc-trips-dashboard"
}
resource "databricks_sql_widget" "ra7b32891bb5" {
  visualization_id = databricks_sql_visualization.results_3d1b425c_709d_49fb_8b2b_a9081bd873c1_da49e53d_6373_4198_a1f4_e309f73531f3.visualization_id
  title            = "Results - nyctrips-sqlquery"
  position {
    size_y = 14
    size_x = 3
  }
  dashboard_id = databricks_sql_dashboard.nyc_trips_dashboard_8a395628_d76a_48da_ae68_b338ca03b857.id
}
resource "databricks_sql_visualization" "results_3d1b425c_709d_49fb_8b2b_a9081bd873c1_da49e53d_6373_4198_a1f4_e309f73531f3" {
  type     = "table"
  query_id = databricks_sql_query.nyctrips_sqlquery_3d1b425c_709d_49fb_8b2b_a9081bd873c1.id
  options  = "{\"version\": 2}"
  name     = "Results"
}
