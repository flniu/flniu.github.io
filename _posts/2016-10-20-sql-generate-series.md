---
title: "SQL生成数字序列（数字表）"
date: 2016-10-20 22:38:55 +0800
tags: sql
---

在面向集合的关系数据库中，根据需要生成行集是一个很有用的功能，如生成测试数据、填充序列的缺失项、等等。

首先只要生成一个数字序列，其他类型的序列（字符、时间等等）可以通过函数计算生成。

在支持CTE(common table expressions)的DBMS上，可以用一个语句生成数字序列：

```sql
--SQL Server
CREATE TABLE dbo.nums(n int NOT NULL PRIMARY KEY);

WITH B1 AS(SELECT n=1 UNION ALL SELECT n=1), --2
B2 AS(SELECT n=1 FROM B1 a CROSS JOIN B1 b), --4
B3 AS(SELECT n=1 FROM B2 a CROSS JOIN B2 b), --16
B4 AS(SELECT n=1 FROM B3 a CROSS JOIN B3 b), --256
B5 AS(SELECT n=1 FROM B4 a CROSS JOIN B4 b), --65536
CTE AS(SELECT r=ROW_NUMBER() OVER(ORDER BY (SELECT 1)) FROM B5 a CROSS JOIN B3 b) --65536 * 16
INSERT INTO dbo.nums(n)
SELECT TOP(1000000) r FROM CTE ORDER BY r;
```

以上语句在SQL Server上，借用CTE和ROW_NUMBER函数生成100万个整数，填充到预定义的数字表。

MySQL 8.0也将支持CTE，但不支持如ROW_NUMBER之类的ranking function，可以借助位运算生成数字序列。

MySQL 8.0以前的版本，可以通过视图生成序列：

```sql
--MySQL
CREATE OR REPLACE VIEW generator_16
AS SELECT 0 n UNION ALL SELECT 1  UNION ALL SELECT 2  UNION ALL
   SELECT 3   UNION ALL SELECT 4  UNION ALL SELECT 5  UNION ALL
   SELECT 6   UNION ALL SELECT 7  UNION ALL SELECT 8  UNION ALL
   SELECT 9   UNION ALL SELECT 10 UNION ALL SELECT 11 UNION ALL
   SELECT 12  UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL
   SELECT 15;

CREATE OR REPLACE VIEW generator_256
AS SELECT ( ( hi.n << 4 ) | lo.n ) AS n
     FROM generator_16 lo, generator_16 hi;

CREATE OR REPLACE VIEW generator_4k
AS SELECT ( ( hi.n << 8 ) | lo.n ) AS n
     FROM generator_256 lo, generator_16 hi;

CREATE OR REPLACE VIEW generator_64k
AS SELECT ( ( hi.n << 8 ) | lo.n ) AS n
     FROM generator_256 lo, generator_256 hi;

CREATE OR REPLACE VIEW generator_1m
AS SELECT ( ( hi.n << 16 ) | lo.n ) AS n
     FROM generator_64k lo, generator_16 hi;
```

PostgreSQL的generate_series函数可以直接生成各种序列：

```sql
--PostgreSQL
SELECT * FROM generate_series(2,4);
SELECT * FROM generate_series(5,1,-2);
SELECT * FROM generate_series('2008-03-01 00:00'::timestamp,
                              '2008-03-04 12:00', '10 hours');
```

参考文章：http://use-the-index-luke.com/blog/2011-07-30/mysql-row-generator
