CREATE TABLE [dbo].[SCD](
    [DimEmpID] int identity(1,1) Not NULL,
    [ID] [varchar](50) NULL,
    [First] [varchar](50) NULL,
    [Last] [varchar](50) NULL,
    [Rate] [varchar](50) NULL,
    [Title] [varchar](50) NULL,
    [Zipcode] [varchar](50) NULL,
    [Startdate] [date] NULL,
    [Enddate] [date] NULL,
    [Update] [date] NULL,
    [PriorZip] [Varchar](50) NULL,
   
) ON [PRIMARY]

Select * FROM SCD


