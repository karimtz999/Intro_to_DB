-- Use the alx_book_store database
USE alx_book_store;

-- Retrieve the column information for the books table
SELECT COLUMN_NAME, COLUMN_TYPE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Books';

