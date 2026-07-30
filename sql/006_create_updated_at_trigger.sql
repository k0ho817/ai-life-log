CREATE OR REPLACE FUNCTION updatetime()
RETURNS TRIGGER AS $updatetime_trigger$
BEGIN
    NEW.updated_at := CURRENT_TIMESTAMP;
    RETURN NEW;
END
$updatetime_trigger$ LANGUAGE plpgsql;

CREATE TRIGGER updatetime_trigger
BEFORE UPDATE ON life_logs
FOR EACH ROW
EXECUTE FUNCTION updatetime();

