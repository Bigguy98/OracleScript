-- insert data
INSERT INTO branch VALUES('Library1','Thu vien Ho Tay', 'Good library', 'So 12 pho Tay Ho, Hoan Kiem');
INSERT INTO branch VALUES('Library2','Thu vien Ha Dong', 'Good library', 'So 13 Nguyen Trai, Ha Dong');

INSERT INTO book VALUES('Book1','Library1','Sherlock Holmes','Conan Doyle', 2015, 2);
INSERT INTO book VALUES('Book2','Library1','Nerver Eat Alone','James', 2014, 3);
INSERT INTO book VALUES('Book3','Library1','The Blue Tree','Author', 2012, 2);
INSERT INTO book VALUES('Book4','Library1','Black Ship','Fane', 2010, 7);
INSERT INTO book VALUES('Book5','Library2','Way To Home','Adrian', 2015, 8);
INSERT INTO book VALUES('Book6','Library2','True Love','Lily', 2015, 7);

INSERT INTO reader VALUES('Reader1', 'Vu Thanh Tung', 22, 'tungvt@gmail.com', 'Nguyen Van Troi, Ha Dong');
INSERT INTO reader VALUES('Reader2', 'Nguyen Thi Hoa', 23, 'hoant@gmail.com', 'Van Quan, Ha Dong');
INSERT INTO reader VALUES('Reader3', 'Dong Van Phong', 21, 'phongdv@gmail.com', 'To Huu, Ha Dong');

INSERT INTO issueNote(note_id, reader_id, book_id, issueDate, returnDate)
	VALUES('note1','Reader1','Book2', to_date('22/12/2019','dd/mm/yyyy') , to_date('29/12/2019','dd/mm/yyyy'));
INSERT INTO issueNote(note_id, reader_id, book_id, issueDate, returnDate)
	VALUES('note2','Reader1','Book1', to_date('22/12/2019','dd/mm/yyyy') , to_date('29/12/2019','dd/mm/yyyy'));
INSERT INTO issueNote(note_id, reader_id, book_id, issueDate, returnDate)
	VALUES('note3','Reader1','Book3', to_date('24/12/2019','dd/mm/yyyy') , to_date('01/01/2019','dd/mm/yyyy'));
INSERT INTO issueNote(note_id, reader_id, book_id, issueDate, returnDate)
	VALUES('note4','Reader1','Book6', to_date('24/12/2019','dd/mm/yyyy') , to_date('01/01/2019','dd/mm/yyyy'));

-- update data
update reader set address = 'So nha 20, ngo 133, Nguyen Van Troi, Ha Dong' where reader_id = 'Reader1';

-- delete data
delete FROM issueNote where note_id = 'note4'; 

