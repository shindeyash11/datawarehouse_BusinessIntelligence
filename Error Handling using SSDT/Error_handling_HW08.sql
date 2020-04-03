/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [status_id]
      ,[status]
  FROM [Week05].[dbo].[lookup_status]


  /* BAD STATUS */ 
  select row_number() over( order  by Status) as StatusID, Status into lookupstatus  from [Week05].[dbo].[loadfirstnoerrors1.xlsx] group by Status
select * from lookupstatus

   /* Prefix */ 
   select row_number() over  (order by substring(CredentialNumber,1,2)) as cred_num, substring(CredentialNumber,1,2) as CredID
 into lookup_prefix from [Week05].[dbo].[loadfirstnoerrors1.xlsx]
  group by substring(CredentialNumber,1,2);
  Select * from lookup_prefix

   /* BAD CREDENTIAL */ 
  select row_number() over( order  by CredentialType) as Credential_ID,CredentialType into Credential_lookup  from [Week05].[dbo].[loadfirstnoerrors1.xlsx] group by CredentialType
  select* from Credential_lookup