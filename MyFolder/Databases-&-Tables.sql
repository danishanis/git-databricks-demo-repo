-- Databricks notebook source
CREATE TABLE managed_default
(width INT, length INT, height INT)

-- COMMAND ----------

INSERT INTO managed_default
VALUES (3 INT, 2 INT, 1 INT)

-- COMMAND ----------

DESCRIBE EXTENDED managed_default

-- COMMAND ----------

CREATE TABLE external_default
(width INT, length INT, height INT)
LOCATION 'dbfs:/mnt/demo/external_default'

-- COMMAND ----------

INSERT INTO external_default 
VALUES (3 INT, 2 INT, 1 INT)

-- COMMAND ----------

DESCRIBE EXTENDED external_default

-- COMMAND ----------

DROP TABLE external_default

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/mnt/demo/external_default'

-- COMMAND ----------

CREATE DATABASE new_default

-- COMMAND ----------

describe database extended new_default

-- COMMAND ----------

drop table managed_default

-- COMMAND ----------

USE new_default;
CREATE TABLE IF NOT EXISTS managed_new_default 
(width INT, length INT, height INT)

-- COMMAND ----------

INSERT INTO managed_new_default VALUES (10 INT, 20 INT, 30 INT);

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS external_new_default (width INT, length INT, height INT)
LOCATION 'dbfs:/mnt/demo/external_new_default';

INSERT INTO external_new_default 
VALUES (10 INT, 20 INT, 30 INT)

-- COMMAND ----------

DESCRIBE EXTENDED external_new_default;
DESCRIBE EXTENDED managed_new_default

-- COMMAND ----------

DROP TABLE managed_new_default;
DROP TABLE external_new_default


-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/mnt/demo/external_new_default'

-- COMMAND ----------

CREATE SCHEMA custom
LOCATION 'dbfs:/Shared/schema/custom.db'

-- COMMAND ----------

DESCRIBE DATABASE EXTENDED custom

-- COMMAND ----------

DROP DATABASE custom

-- COMMAND ----------

DROP DATABASE new_default

-- COMMAND ----------


