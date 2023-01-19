-- Active: 1674131979922@@127.0.0.1@3306

-- Práticas
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    crate_at TEXT DEFAULT(DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password)
VALUES ('bananinha1', 'Joaquina', 'jojo@email.com', 'joaquina123'),
('bananinha2', 'Fabiano', 'fabiano@email.com', 'fabiano123'),
('bananinha3', 'Wesley', 'wes@email.com', 'wesley123');

SELECT * FROM users;

CREATE TABLE follows (
    follower_id TEXT NOT NULL,
    followed_id TEXT NOT NULL,
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followed_id) REFERENCES users(id),
);

INSERT INTO follows (follower_id, followed_id)
('bananinha1', 'bananinha2'),
('bananinha1', 'bananinha3')
('bananinha2', 'bananinha1');
