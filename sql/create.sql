CREATE TABLE User (
  userId VARCHAR(60),
  userName VARCHAR(20),
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  PRIMARY KEY(userId)
);

-- -- --------------------------------

INSERT INTO User(userId, userName, profileImg) VALUES
('dbsdud41', '최윤영', 'profile1.jpg'),
('asd', '침착맨', 'profile2.jpg'),
('rmsdnjs518', '박근원', 'profile3.jpg'),
('rlwo36', '김기재', 'profile4.jpg'),
('xhdcjs12', '통천', 'profile5.jpg');

-- -- --------------------------------

SELECT userId, userName
FROM User
ORDER BY created DESC
LIMIT 1;

SELECT userName
FROM User
WHERE userId = 'asd';

DELETE FROM User
WHERE userName = '박근원';

UPDATE User
SET userId = 'dsa'
WHERE userName = '김기재';