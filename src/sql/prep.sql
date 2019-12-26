UPDATE trf_pers SET Status = 'enabled' WHERE Status IS NULL;
UPDATE trf_pers SET Context = 'center' WHERE Context IS NULL;
UPDATE trf_pers SET Hr = 14 WHERE Hr IS NULL;
UPDATE trf_pers SET Dayn = 26 WHERE Dayn IS NULL;
UPDATE trf_pers SET Dayw = 'Thu' WHERE Dayw IS NULL;
UPDATE trf_pers SET Monthn = 12 WHERE Monthn IS NULL;
UPDATE trf_pers SET Year = 2019 WHERE Year IS NULL;

