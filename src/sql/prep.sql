UPDATE trf_pers SET Status = 'enabled' WHERE Status IS NULL;
UPDATE trf_pers SET Context = 'center' WHERE Context IS NULL;
UPDATE trf_pers SET Hr = 8 WHERE Hr IS NULL;
UPDATE trf_pers SET Dayn = 15 WHERE Dayn IS NULL;
UPDATE trf_pers SET Dayw = 'Sun' WHERE Dayw IS NULL;
UPDATE trf_pers SET Monthn = 12 WHERE Monthn IS NULL;
UPDATE trf_pers SET Year = 2019 WHERE Year IS NULL;

