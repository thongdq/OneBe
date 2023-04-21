CREATE TABLE refresh_tokens (
    id serial PRIMARY KEY,
    user_id int UNIQUE NOT NULL,
    token VARCHAR (255 ) UNIQUE NOT NULL,
    expiryDate TIMESTAMP NOT NULL,
    CONSTRAINT fk_users FOREIGN KEY(user_id) REFERENCES users(id)
);