ALTER SYSTEM SET wal_level = logical;
ALTER SYSTEM SET max_replication_slots = 10;
-- set this value to the number of tables you want to load into elastic
-- for now we only have one table called user_logs
-- To prevent your server logs from growing too large e.g when running on cloud infrastructure where 
-- there is a cost implication. You can optionally impose a ceiling on the replication slot size 
-- using max_slot_wal_keep_size
ALTER SYSTEM SET max_slot_wal_keep_size = '100GB';