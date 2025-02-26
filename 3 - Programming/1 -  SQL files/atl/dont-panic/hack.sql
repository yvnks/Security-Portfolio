--Alter the password of the website’s administrative account, admin, to instead be “oops!”.
UPDATE "users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

--erase logs
DELETE FROM "user_logs" WHERE "new_username" = 'admin' AND "old_username" = 'admin';

INSERT INTO "user_logs"("type", "old_username","new_username", "old_password", "new_password")
VALUES('update','admin', 'admin', '982c0381c279d139fd221fce974916e7', (
        SELECT "password" FROM "users"
        WHERE "username" = 'emily33'
    ));
