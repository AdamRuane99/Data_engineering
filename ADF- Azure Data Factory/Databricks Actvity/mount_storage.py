# Databricks notebook source
# MAGIC %md
# MAGIC ## Mount the following data lake storage gen2 containers
# MAGIC 1. raw
# MAGIC 2. processed
# MAGIC 3. lookup

# COMMAND ----------

# MAGIC %md
# MAGIC ### Set-up the configs
# MAGIC #### Please update the following 
# MAGIC - application-id
# MAGIC - service-credential
# MAGIC - directory-id

# COMMAND ----------

configs = {"fs.azure.account.auth.type": "OAuth",
           "fs.azure.account.oauth.provider.type": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
           "fs.azure.account.oauth2.client.id": "ad960293-0477-4bc0-b50b-5926254d93f0",
           "fs.azure.account.oauth2.client.secret": "UaX8Q~.k4n.zTPaeAuQwAyiLkxdv4BuvsPGU5cFf",
           "fs.azure.account.oauth2.client.endpoint": "https://login.microsoftonline.com/5a94a88e-831c-4d6a-88d0-93cf856ea253/oauth2/token"}

# COMMAND ---------- 
# MAGIC %md
# MAGIC ### Mount the raw container
# MAGIC #### Update the storage account name before executing

# COMMAND ----------

dbutils.fs.mount(
  source = "abfss://processed@covidreportingdatalakear.dfs.core.windows.net/",
  mount_point = "/mnt/covidreportingdatalakear/processed",
  extra_configs = configs)

# COMMAND ----------

# MAGIC %md
# MAGIC ### Mount the processed container
# MAGIC #### Update the storage account name before executing

# COMMAND ----------

dbutils.fs.mount(
  source = "abfss://processed@covidreportingdatalakear.dfs.core.windows.net/",
  mount_point = "/mnt/covidreportingdatalakear/processed",
  extra_configs = configs)

# COMMAND ----------

# MAGIC %md
# MAGIC ### Mount the lookup container
# MAGIC #### Update the storage account name before executing

# COMMAND ----------
dbutils.fs.mount(
  source = "abfss://lookup@covidreportingdatalakear.dfs.core.windows.net/",
  mount_point = "/mnt/covidreportingdatalakear/lookup",
  extra_configs = configs)
