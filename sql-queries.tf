resource "databricks_sql_query" "nyctrips_sqlquery_3d1b425c_709d_49fb_8b2b_a9081bd873c1" {
  query          = "Select * from trips"
  parent         = "folders/3705069258112404"
  name           = "nyctrips-sqlquery"
  data_source_id = "83e1d54f-9932-4d88-b266-09fbbd153d3e"
}
