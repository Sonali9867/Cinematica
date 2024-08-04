CREATE TABLE history (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user1(id),
    FOREIGN KEY (movie_id) REFERENCES movies(mid)
);