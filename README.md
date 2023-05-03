# alx-backend-storage

## Projects:
    1. MySQL Advanced.
    2.

## Requirements

### General

- All your files will be executed on Ubuntu 18.04 LTS using `MySQL 5.7` (version 5.7.30)
- All your files should end with a new line
- All your SQL queries should have a comment just before (i.e. syntax above)
- All your files should start by a comment describing the task
- All SQL keywords should be in uppercase (`SELECT`, `WHERE`…)
- A `README.md` file, at the root of the folder of the project, is mandatory
- The length of your files will be tested using `wc`
    
    ## More Info
    
    ### Comments for your SQL file:
    
    ```
    $ cat my_script.sql
    -- 3 first students in the Batch ID=3
    -- because Batch 3 is the best!
    SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;
    $ 
    ```
