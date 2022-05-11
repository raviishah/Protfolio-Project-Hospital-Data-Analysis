-- Explore UTS Hospital data and order by Patient ID

  SELECT *
    FROM [Portfolio Project].[dbo].['UTS Hospital dataset$']
    Order by [Patient ID]


--Total number of unique cases reported as per DRGs (Diagnosis Related Groups) 

SELECT distinct DRG41,
[DRG Description]
  FROM [Portfolio Project].[dbo].['UTS Hospital dataset$']
 

 --Looking at total number of cases as per each DRGs

 SELECT [DRG Description],COUNT(*) as TotalAdmissions
FROM [Portfolio Project].[dbo].['UTS Hospital dataset$']
Group By [DRG Description]
Order By TotalAdmissions desc


 --Looking at total Bronchities and Asthma cases vs total admissions

 SELECT DRG41,[Patient ID],
[DRG Description],age,LOS,[Principal Diagnosis],[Diagnosis 2]
  FROM [Portfolio Project].[dbo].['UTS Hospital dataset$']
  Where DRG41 like 'E69%'
  Order by 1

  --Looking at age wise prevalence of Bronchities and Asthma cases 

SELECT DRG41,[DRG Description], count(DRG41) as TotalAsthmaCases
FROM [Portfolio Project].[dbo].['UTS Hospital dataset$']
where DRG41 like 'E69%'
Group By DRG41,[DRG Description]


--Looking at age and gender wise prevalence of Bronchities and Asthma cases

SELECT Gender, DRG41,[DRG Description]
FROM [Portfolio Project].[dbo].['UTS Hospital dataset$']
where DRG41 like 'E69%'
order by gender


--Looking at average Length of stay for Bronchities and Asthma cases

SELECT AVG(LOS) as LengthofStay, DRG41,[DRG Description],COUNT(DRG41) as TotalAsthmaCases
FROM [Portfolio Project].[dbo].['UTS Hospital dataset$']
where DRG41 like 'E69%'
group by DRG41,[DRG Description]


