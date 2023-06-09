DO
$$
BEGIN
    IF EXISTS (
        SELECT CONSTRAINT_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
        WHERE TABLE_NAME = 'ir_timelineevent' 
        AND CONSTRAINT_TYPE = 'PRIMARY KEY' 
        AND TABLE_CATALOG = (SELECT CURRENT_DATABASE())
    ) THEN
        ALTER TABLE IR_TimelineEvent DROP CONSTRAINT ir_timelineevent_pkey;
	END IF;
END
$$;
