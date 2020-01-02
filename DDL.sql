CREATE TABLE branch (
	branch_id varchar(20),
	name varchar(20) CONSTRAINT name_not_null NOT NULL,
	description varchar(20),
	address varchar(20) CONSTRAINT address_not_null NOT NULL,
	CONSTRAINT branch_pk PRIMARY KEY (branch_id)
);
CREATE TABLE book (
	book_id varchar(20),
	branch_id CONSTRAINT id_for_branch REFERENCES branch(branch_id),  	
	title varchar(50) CONSTRAINT title_not_null NOT NULL,
	author varchar(50) CONSTRAINT author_not_null NOT NULL,
	publishYear number,
	rating number,
	CONSTRAINT book_pk PRIMARY KEY (book_id),
	CONSTRAINT check_rating CHECK (rating IS NULL OR (rating >=1 and rating <=10))
);
CREATE TABLE reader (
	reader_id varchar(20),
	name varchar(50) CONSTRAINT reader_name_not_null NOT NULL,
	age number CONSTRAINT age_not_null NOT NULL,
	email varchar(50),
	address varchar(50),
	CONSTRAINT reader_pk PRIMARY KEY (reader_id)
)
CREATE TABLE issueNote (
	note_id varchar(20),
	reader_id CONSTRAINT id_for_reader REFERENCES reader(reader_id),
	book_id CONSTRAINT id_for_book REFERENCES book(book_id),
	issueDate DATE CONSTRAINT issueDate_not_null NOT NULL,
	returnDate DATE CONSTRAINT returnDate_not_null NOT NULL,
	CONSTRAINT issueNote_pk PRIMARY KEY (note_id)
)