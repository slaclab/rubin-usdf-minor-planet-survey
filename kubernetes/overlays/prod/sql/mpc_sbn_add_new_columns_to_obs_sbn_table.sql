-- SQL script to add new columns to MPC/SBN replicated table 'obs_sbn'
ALTER TABLE obs_sbn
ADD COLUMN vel1 numeric,
ADD COLUMN vel2 numeric,
ADD COLUMN vel3 numeric,
ADD COLUMN fltr char(3),
ADD COLUMN obstime_text text;

-- Verify presence of new columns
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'obs_sbn' 
AND column_name IN ('vel1', 'vel2', 'vel3', 'fltr', 'obstime_text');