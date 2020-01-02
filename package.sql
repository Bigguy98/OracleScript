-- package specification
CREATE OR REPLACE PACKAGE GET_INFO AS 
    function get_book_title(bookId varchar) return book.title%TYPE;
    function get_book_author(bookId varchar) return book.author%TYPE;
END GET_INFO;
-- package body
CREATE OR REPLACE PACKAGE BODY GET_INFO AS

  PROCEDURE get_book_info(bookId varchar, titleOut OUT book.title%TYPE, authorOut OUT book.author%TYPE) AS
    BEGIN
        SELECT title, author into titleOut, authorOut
        FROM book 
        where book_id = bookId;
    END;  
    ----------------------------------------------------------------------
  function get_book_title(bookId varchar) return book.title%TYPE AS
    titleOut book.title%TYPE;
    authorOut book.author%TYPE;
  BEGIN
    -- TODO: Implementation required for function GET_INFO.get_book_title
    get_book_info(bookId, titleOut, authorOut);
    return titleOut;
  END get_book_title;
    -----------------------------------------------------------
  function get_book_author(empId number) return department.name%TYPE AS
    titleOut book.title%TYPE;
    authorOut book.author%TYPE;
  BEGIN
    -- TODO: Implementation required for function GET_INFO.get_book_author
    get_book_info(bookId, titleOut, authorOut);
    return authorOut;
  END get_book_author;

END GET_INFO;