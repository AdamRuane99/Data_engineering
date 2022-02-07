USE Adam_EDW;

DROP TABLE IF EXISTS dbo.EPL_Data_Stage;

CREATE TABLE EPL_Data_Stage (
"Home_Club" nvarchar(50),
"Away_Club" nvarchar(50),
"home_goals" nvarchar(50),
"away_goals" nvarchar(50),
    "datetime" DATE,
    xHomeG nvarchar(50),
    "xAwayG" nvarchar(50),
    "winforecast" nvarchar(50),
    "loseforecast" nvarchar(50),
	"drawforecast" nvarchar(50),
	"RESULT" nvarchar(10)
);