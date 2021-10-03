CREATE VIEW [dbo].[vBook]
  AS select
 distinct [Books].Name as 'Book', string_agg(Authors.Name,',') AS 'Authors', Publishers.Name as 'Publisher', BookDetails.Description
  FROM AuthorBook Right join Books on AuthorBook.BookId=Books.Id 
  join Authors on Authors.Id = AuthorBook.AuthorId 
 left  join Publishers on Publishers.Id = BookId
  join BookDetails on Books.Id = BookDetails.Id
GROUP BY Books.Name, Publishers.Name, BookDetails.Description
--from
-- [Books] o left join
-- [AuthorBook] uo on uo.BookId = o.id join
-- [Authors] u on u.id = uo.AuthorId 
--group by o.Name

--SELECT
--      m.maskid
--    , m.maskname
--    , m.schoolid
--    , s.schoolname
--    , maskdetail = STUFF((
--          SELECT ',' + md.maskdetail
--          FROM dbo.maskdetails md
--          WHERE m.maskid = md.maskid
--          FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '')
--FROM dbo.tblmask m
--JOIN dbo.school s ON s.ID = m.schoolid
--ORDER BY m.maskname
