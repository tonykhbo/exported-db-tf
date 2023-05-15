#!/bin/sh

set -e

terraform import databricks_group_member.admins_948737816221583_tony_bo "948737816221583|843719678597322"
terraform import databricks_user.tony_bo "843719678597322"
terraform import databricks_cluster.tony_bos_cluster_0419_175553_p0tvaicz "0419-175553-p0tvaicz"
