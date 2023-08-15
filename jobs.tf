resource "databricks_job" "backup_job_650159901727169" {
  webhook_notifications {
  }
  task {
    task_key = "DR_DAIS_Backup"
    run_if   = "ALL_SUCCESS"
    notification_settings {
    }
    notebook_task {
      source        = "GIT"
      notebook_path = "backup_job"
      base_parameters = {
        site = "primary"
      }
    }
    existing_cluster_id = databricks_cluster.tony_bo_s_cluster_0725_192405_4t5nwqc.id
    email_notifications {
    }
  }
  name = "Backup_Job"
  git_source {
    url      = "https://github.com/sachinpatilb/dais_dr"
    provider = "gitHub"
    branch   = "main"
  }
  email_notifications {
  }
}
resource "databricks_job" "dr_etl_pipeline_primary_52995875869398" {
  webhook_notifications {
  }
  task {
    task_key = "Bronze_to_Silver_run"
    run_if   = "ALL_SUCCESS"
    notification_settings {
    }
    notebook_task {
      source        = "GIT"
      notebook_path = "2-Bronze-to-Silver"
      base_parameters = {
        site = "primary"
      }
    }
    existing_cluster_id = databricks_cluster.tony_bo_s_cluster_0725_192405_4t5nwqc.id
    email_notifications {
    }
    depends_on {
      task_key = "DBCreation"
    }
  }
  task {
    task_key = "Cleanup"
    run_if   = "ALL_SUCCESS"
    notification_settings {
    }
    notebook_task {
      source        = "GIT"
      notebook_path = "00-Cleanup"
      base_parameters = {
        mode = "all"
        site = "primary"
      }
    }
    existing_cluster_id = databricks_cluster.tony_bo_s_cluster_0725_192405_4t5nwqc.id
    email_notifications {
    }
  }
  task {
    task_key = "DBCreation"
    run_if   = "ALL_SUCCESS"
    notification_settings {
    }
    notebook_task {
      source        = "GIT"
      notebook_path = "0-database"
      base_parameters = {
        site = "primary"
      }
    }
    existing_cluster_id = databricks_cluster.tony_bo_s_cluster_0725_192405_4t5nwqc.id
    email_notifications {
    }
    depends_on {
      task_key = "Cleanup"
    }
  }
  task {
    task_key = "DataIngestion"
    run_if   = "ALL_SUCCESS"
    notification_settings {
    }
    notebook_task {
      source        = "GIT"
      notebook_path = "000-Ingest-to-Landing"
      base_parameters = {
        site = "primary"
      }
    }
    existing_cluster_id = databricks_cluster.tony_bo_s_cluster_0725_192405_4t5nwqc.id
    email_notifications {
    }
    depends_on {
      task_key = "Cleanup"
    }
  }
  task {
    task_key = "Silver_to_Gold_run"
    run_if   = "ALL_SUCCESS"
    notification_settings {
    }
    notebook_task {
      source        = "GIT"
      notebook_path = "3a-Silver-to-Gold"
      base_parameters = {
        site = "primary"
      }
    }
    existing_cluster_id = databricks_cluster.tony_bo_s_cluster_0725_192405_4t5nwqc.id
    email_notifications {
    }
    depends_on {
      task_key = "DBCreation"
    }
  }
  task {
    task_key = "ingest_into_bronze"
    run_if   = "ALL_SUCCESS"
    notification_settings {
    }
    notebook_task {
      source        = "GIT"
      notebook_path = "1-Ingestion-into-Bronze"
      base_parameters = {
        site = "primary"
      }
    }
    existing_cluster_id = databricks_cluster.tony_bo_s_cluster_0725_192405_4t5nwqc.id
    email_notifications {
    }
    depends_on {
      task_key = "DBCreation"
    }
  }
  name = "DR ETL Pipeline (Primary)"
  git_source {
    url      = "https://github.com/sachinpatilb/dais_dr"
    provider = "gitHub"
    branch   = "main"
  }
  email_notifications {
  }
}
