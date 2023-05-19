# Databricks notebook source
dbutils.fs.mount(source="nfs://10.1.1.4/home", mount_point="/mnt/nfs/")

# COMMAND ----------

!ls /mnt

# COMMAND ----------

!mkdir /mnt/nfs/var/general

# COMMAND ----------

!mount 10.1.1.4:/var/nfs/general /mnt/nfs/var/general -vvvv

# COMMAND ----------

!ifconfig

# COMMAND ----------

