Alter Table enrollement
Drop Constraint c_id;    -- schema for deleting any constraing on foregin key of given table



-- schema for adding foregin key constraint on given table
ALTER TABLE enrollement 
ADD constraint c_id
FOREIGN KEY (c_id)
REFERENCES course (c_id)
ON DELETE CASCADE;