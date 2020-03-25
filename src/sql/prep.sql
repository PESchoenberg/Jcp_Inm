UPDATE trf_pers SET Status = 'enabled' WHERE Status IS NULL;
UPDATE trf_pers SET Context = 'center' WHERE Context IS NULL;
UPDATE trf_pers SET Hr = 8 WHERE Hr IS NULL;
UPDATE trf_pers SET Dayn = 26 WHERE Dayn IS NULL;
UPDATE trf_pers SET Dayw = 'Wed' WHERE Dayw IS NULL;
UPDATE trf_pers SET Monthn = 3 WHERE Monthn IS NULL;
UPDATE trf_pers SET Year = 2020 WHERE Year IS NULL;

