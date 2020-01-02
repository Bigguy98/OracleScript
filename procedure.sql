-- list all books name have the rating = in_rating
CREATE OR REPLACE PROCEDURE RATING_LIST(in_rating IN NUMBER) AS
    matching_title varchar(50);
    the_cursor CURSOR;
BEGIN
    OPEN the_cursor
        FOR 'SELECT title FROM book WHERE rating = :in_rating'
        USING in_rating;
    dbms_output.put_line('All books of rating of ' || in_rating || ':');
    LOOP
        FETCH the_cursor INTO matching_title;
        EXIT WHEN the_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(matching_title);
    END LOOP;
    CLOSE the_cursor;
END RATING_LIST;