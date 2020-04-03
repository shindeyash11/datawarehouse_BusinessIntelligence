/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [au_id]
      ,[au_lname]
      ,[au_fname]
      ,[phone]
      ,[address]
      ,[city]
      ,[state]
      ,[zip]
      ,[contract]
  FROM [pubs].[dbo].[authors]

select*, row_number() over (order by au_id) from authors
select*, row_number() over (order by au_id desc) as idCol from authors

-- CA01-- CA02
select*, row_number() over (order by au_id desc) as idCol from authors

select 'CA' + '-' + '1'


-- DEMO QUERY: Select right('0000'+ cast (col as varchar(5)),5) from table-- \
-- This Quer adds 0 in the fifth position as it has ',5'at the end of the query. this function is
-- called as Padding
select*, state + '-' + right('00' + cast((row_number() over (partition by state order by au_id desc))
as varchar(10)),2) as idCol
from authors
order by 10 asc