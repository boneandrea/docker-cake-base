CREATE DATABASE stg_pet_lifestyle_com;
CREATE DATABASE test_pet_lifestyle_com;

GRANT ALL PRIVILEGES ON stg_pet_lifestyle_com.* TO user@"%" IDENTIFIED BY 'pass' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON test_pet_lifestyle_com.* TO user@"%" IDENTIFIED BY 'pass' WITH GRANT OPTION;
