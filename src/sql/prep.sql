UPDATE trf_pers SET Status = 'enabled' WHERE Status IS NULL;
UPDATE trf_pers SET Context = 'center' WHERE Context IS NULL;
UPDATE trf_pers SET Hr = 10 WHERE Hr IS NULL;
UPDATE trf_pers SET Dayn = 12 WHERE Dayn IS NULL;
UPDATE trf_pers SET Dayw = 'Tue' WHERE Dayw IS NULL;
UPDATE trf_pers SET Monthn = 11 WHERE Monthn IS NULL;
UPDATE trf_pers SET Year = 2019 WHERE Year IS NULL;

