/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [PassengerId]
      ,[Pclass]
      ,[Name]
      ,[Sex]
      ,[Age]
      ,[SibSp]
      ,[Parch]
      ,[Ticket]
      ,[Fare]
      ,[Cabin]
      ,[Embarked]
      ,[Survived]
  FROM [AUGUST 2023 PROJECTS].[Kaggle].[Titanic]

  /***Travellers on and above the age 50***/
  select name,sex,age
  from [AUGUST 2023 PROJECTS].Kaggle.Titanic
  where Age>=50

  /***Oldest  traveler on titanic***/
  select *
  from Kaggle.Titanic
  where Age=(select max(age) from Kaggle.Titanic )

  /***Younest traveler on Titanic***/
    select *
  from Kaggle.Titanic
  where Age=(select min(age) from Kaggle.Titanic )

  /***Number of travellers from Queentown who survuved***/
  select *
  from Kaggle.Titanic
where Survived=1 and embarked = 'Q'
order by Age
  
  /***Number of travellers from Cherbourg who survuved***/
   select *
  from Kaggle.Titanic
where Survived=1 and embarked = 'C'
order by Age

/***Number of travellers from Southampton who survuved***/
   select *
  from Kaggle.Titanic
where Survived=1 and embarked = 'S'
order by Age

/***Number of travellers from Cherbourg who Died***/
   select *
  from Kaggle.Titanic
where Survived=0 and embarked = 'C'
order by Age

/***Number of travellers from Southampton who Died***/
   select *
  from Kaggle.Titanic
where Survived=0 and embarked = 'S'
order by Age

/***Number of travellers from Queentown who Died***/
   select *
  from Kaggle.Titanic
where Survived=0 and embarked = 'Q'
order by Age

/**Travellers who didnt state their location**/
   select *
  from Kaggle.Titanic
where Embarked is null

/**Family size of each traveller, adding their sibbling,children,parent(if any), and spouse)**/
select *,(SibSp + Parch) as [Family_size]
FROM Kaggle.Titanic

/**Family with highest Family size, family of 10,7 embarked and all dead**/ 
select *
FROM Kaggle.Titanic
where (SibSp + Parch) =(select Max(SibSp + Parch) from Kaggle.Titanic)

select *
from Kaggle.Titanic
where sex = 'female' and Pclass ='3' and Survived='0'

select *
from Kaggle.Titanic
where sex = 'male' and Pclass ='3'

select *
from Kaggle.Titanic
where sex = 'male' and Pclass ='3' and Survived='0'

select *
from Kaggle.Titanic
where sex = 'female' and Pclass ='2' and Survived='0'

select *
from Kaggle.Titanic
where sex = 'male' and Pclass ='1' and Survived='0'








 

 

