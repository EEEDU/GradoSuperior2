create table IF NOT EXISTS Authors(
	id IDENTITY PRIMARY KEY NOT NULL,
	name VARCHAR(25) NOT NULL,
	dateOfBirth VARCHAR(25)
);

create table IF NOT EXISTS Books(
	id IDENTITY PRIMARY KEY NOT NULL ,
	title VARCHAR(25) NOT NULL,
	isbn VARCHAR(13) NOT NULL,
	authorId INT NOT NULL,
	FOREIGN KEY (authorId) REFERENCES Authors(id)
); 