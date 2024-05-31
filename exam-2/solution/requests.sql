-- 4.
SELECT Country, COUNT(*)
FROM Employee
GROUP BY Country
HAVING COUNT(*) > 5;

-- 5.
SELECT COUNT(*) AS Albums, Tracks
FROM ( SELECT A.AlbumId, COUNT(*) AS Tracks
       FROM Album A, Track T
       WHERE A.AlbumId = T.AlbumId
       GROUP BY A.AlbumId )
GROUP BY Tracks;
