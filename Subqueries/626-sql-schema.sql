USE sbx
GO

IF OBJECT_ID('dbo.Seat', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Seat;
END

CREATE TABLE dbo.Seat (
    id int, student varchar(255)
);

Truncate table Seat
insert into Seat (id, student) values ('1', 'Abbot')
insert into Seat (id, student) values ('2', 'Doris')
insert into Seat (id, student) values ('3', 'Emerson')
insert into Seat (id, student) values ('4', 'Green')
insert into Seat (id, student) values ('5', 'Jeames')