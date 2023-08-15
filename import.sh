#!/bin/sh

set -e

terraform import databricks_job.backup_job_650159901727169 "650159901727169"
terraform import databricks_job.dr_etl_pipeline_primary_52995875869398 "52995875869398"
terraform import databricks_cluster.shasidhar_dev_cluster_0810_094321_3j8qu522 "0810-094321-3j8qu522"
terraform import databricks_cluster.shasidhar_erantis_cluster_0810_115652_38i8xxjb "0810-115652-38i8xxjb"
terraform import databricks_cluster.tony_bos_cluster_0725_192405_4t5nwqc "0725-192405-4t5nwqc"
