-- total book
CREATE OR REPLACE FUNCTION TOTAL_BOOKS RETURN NUMBER AS
	total number(2) := 0; 
BEGIN
  SELECT count(*) into total from books;   
  RETURN total;
END TOTAL_BOOKS;

-- get reader name by id
CREATE OR REPLACE FUNCTION GET_READER_NAME(readerId varchar) RETURN VARCHAR AS 
	result reader.name%type;
BEGIN
  BEGIN
    SELECT name into result
    from reader where reader_id = readerId;
    EXCEPTION
    when NO_DATA_FOUND THEN
        result := null;
        dbms_output.put_line('No data found!');
  END;
  return result;
END GET_READER_NAME;