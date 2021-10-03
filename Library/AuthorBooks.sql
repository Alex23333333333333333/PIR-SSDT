CREATE PROCEDURE [dbo].[AuthorBooks]
	@authorId int
AS
	SELECT Books.Name From Books right join  AuthorBook on AuthorBook.BookId= Books.Id WHERE AuthorBook.AuthorId= @authorId
RETURN 0
