UPDATE trf_pers SET Status = 'enabled' WHERE Status IS NULL;
UPDATE trf_pers SET Context = 'center' WHERE Context IS NULL;
UPDATE trf_pers SET Hr = 17 WHERE Hr IS NULL;
UPDATE trf_pers SET Dayn = 3 WHERE Dayn IS NULL;
UPDATE trf_pers SET Dayw = 'Tue' WHERE Dayw IS NULL;
UPDATE trf_pers SET Monthn = 3 WHERE Monthn IS NULL;
UPDATE trf_pers SET Year = 2020 WHERE Year IS NULL;

