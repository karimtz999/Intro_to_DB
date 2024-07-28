
SELECT
    columns.COLUMN_NAME,
    columns.COLUMN_TYPE,
    columns.IS_NULLABLE,
    columns.COLUMN_DEFAULT,
    columns.EXTRA
FROM
    INFORMATION_SCHEMA.COLUMNS AS columns
WHERE
    columns.TABLE_SCHEMA = 'alx_book_store'
    AND columns.TABLE_NAME IN (
        SELECT TABLE_NAME
        FROM INFORMATION_SCHEMA.TABLES
        WHERE TABLE_SCHEMA = 'alx_book_store'
        AND TABLE_NAME = 'Books'
    );
