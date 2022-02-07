USE Adam_EDW;

DROP TABLE IF EXISTS dbo.EPL_data_Stage;

CREATE TABLE EPL_data_Stage (
"Home_Club" Varchar,
"Away_Club" int,
"home_goals" int,
"away_goals" int,
    "datetime" DATE,
    xHomeG int,
    "xAwayG" int,
    "winforecast" INT,
    "loseforecast" INT,
	"drawforecast" INT,
	"RESULT" Varchar
);

