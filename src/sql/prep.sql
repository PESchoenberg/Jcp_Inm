UPDATE trf_pers SET Status = 'enabled' WHERE Status IS NULL;
UPDATE trf_pers SET Context = 'center' WHERE Context IS NULL;
UPDATE trf_pers SET Hr = 9 WHERE Hr IS NULL;
UPDATE trf_pers SET Dayn = 1 WHERE Dayn IS NULL;
UPDATE trf_pers SET Dayw = 'Wed' WHERE Dayw IS NULL;
UPDATE trf_pers SET Monthn = 1 WHERE Monthn IS NULL;
UPDATE trf_pers SET Year = 2020 WHERE Year IS NULL;

