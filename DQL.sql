select * from book;
select title from book where book_id = 'Book2';
select name from reader, issueNote
	where reader.reader_id = issueNote.reader_id
	and issueNote.issueDate < to_date('24/12/2019','dd/mm/yyyy');
select count(*) from book where rating > 2; 