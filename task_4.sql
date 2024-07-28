SELECT
    columns.TABLE_NAME,
    columns.COLUMN_NAME,
    columns.COLUMN_TYPE,
    columns.IS_NULLABLE,
    columns.COLUMN_DEFAULT,
    columns.COLUMN_KEY,
    columns.EXTRA
FROM
    INFORMATION_SCHEMA.COLUMNS AS columns
JOIN
    INFORMATION_SCHEMA.TABLES AS tables
ON
    columns.TABLE_SCHEMA = tables.TABLE_SCHEMA
    AND columns.TABLE_NAME = tables.TABLE_NAME
WHERE
    tables.TABLE_SCHEMA = 'alx_book_store'
    AND tables.TABLE_NAME = 'books';
