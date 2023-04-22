ALTER TABLE refresh_tokens ALTER COLUMN expirydate TYPE timestamptz USING expirydate::timestamptz;
