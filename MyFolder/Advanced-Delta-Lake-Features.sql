-- Databricks notebook source
describe history employees

-- COMMAND ----------

select * from employees
version as of 1

-- COMMAND ----------

select * from employees@v1

-- COMMAND ----------

delete from employees

-- COMMAND ----------

restore table employees to version as of 2

-- COMMAND ----------

select * from employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

optimize employees zorder by id

-- COMMAND ----------

describe history employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

drop table employees

-- COMMAND ----------


