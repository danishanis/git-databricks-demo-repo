-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Sample Notebook

-- COMMAND ----------

CREATE TABLE if not exists new_employees
   (id INT, name STRING, salary DOUBLE);

-- COMMAND ----------

insert into new_employees
values 
(1, "Adam", 3500.0),
(2, "Sarah", 4020.5),
(3, "John", 2999.3),
(4, "Thomas", 4000.3),
(5, "Anna", 2500.0)


-- COMMAND ----------

select * from new_employees

-- COMMAND ----------

describe detail new_employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/new_employees'

-- COMMAND ----------

UPDATE employees
SET salary = salary * 100
where name like "A%"

-- COMMAND ----------

select * from employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/new_employees/_delta_log/'

-- COMMAND ----------

-- MAGIC %fs head 'dbfs:/user/hive/warehouse/new_employees/_delta_log/00000000000000000002.json'

-- COMMAND ----------


