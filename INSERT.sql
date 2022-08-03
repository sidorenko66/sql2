INSERT INTO Genres (name)
VALUES
('rock'),
('pop'),
('dance'),
('hip hop'),
('reggae');

INSERT INTO Artists (name)
VALUES
('Queen'),
('Frank Sinatra'),
('Eminem'),
('Ricky Martin'),
('Зоопарк'),
('Кино'),
('Nautilus Pompilius'),
('Bob Marley');

INSERT INTO Albums (name, year)
VALUES
('Innuendo', 1991),
('My Way', 1969),
('A Night at the Opera', 1975),
('Kamikaze', 2018),
('Livin’ la Vida Loca', 1999),
('Lose Yourself', 2002),
('LV', 1982),
('Музыка для фильма', 1991);

INSERT INTO Tracks (name, duration, album_id)
VALUES
('The Show Must Go On', '00:04:31', 1),
('My Way', '00:04:35', 2),
('Love of My Life', '00:03:39', 3),
('God Save the Queen', '00:01:18', 3),
('Not Alike', '00:04:48', 4),
('Bohemian Rhapsody', '00:05:55', 3),
('Livin’ la Vida Loca', '00:04:03', 5),
('Lose Yourself', '00:05:26', 6),
('Завтра меня здесь не будет (мой медленный поезд)', '00:03:38', 7),
('Буги-вуги', '00:02:34', 8),
('Сладкая N', '00:03:16', 8),
('Шпионство', '00:05:47', 8),
('Если хочешь', '00:02:43', 8),
('6 утра', '00:03:26', 8),
('Музыка для фильма', '00:02:49', 8);

INSERT INTO Collections (name, year)
VALUES
('Bohemian Rhapsody: The Original Soundtrack', 2018),
('Greatest Hits: Souvenir Edition', 2013),
('Greatest Hits', 1981),
('Music from and Inspired by the Motion Picture 8 Mile', 2002),
('Легенды русского рока — 1', 1996),
('Легенды русского рока — 2', 1997),
('Легенды русского рока — 3', 1998),
('Легенды русского рока — 4', 1999);

INSERT INTO ArtistGenre (artist_id, genre_id)
VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 2),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 5);

INSERT INTO ArtistAlbum (artist_id, album_id)
VALUES
(1, 1),
(2, 2),
(1, 3),
(3, 4),
(4, 5),
(5, 7),
(5, 8);

INSERT INTO CollectionTrack (collection_id, track_id)
VALUES
(1, 1),
(1, 3),
(1, 6),
(2, 7),
(4, 6),
(5, 9);