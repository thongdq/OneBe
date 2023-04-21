DROP TABLE IF EXISTS users cascade;
DROP TABLE IF EXISTS roles cascade;
DROP TABLE IF EXISTS user_roles cascade;

CREATE TABLE users (
    id serial PRIMARY KEY,
    username VARCHAR (255 ) UNIQUE NOT NULL,
    email VARCHAR (255) UNIQUE NOT NULL,
    password VARCHAR (255) NOT NULL
);

CREATE TABLE roles (
    id serial PRIMARY KEY,
    name VARCHAR (255) NOT NULL
);

CREATE TABLE user_roles (
    user_id int NOT NULL,
    role_id int NOT NULL,
    CONSTRAINT pk_user_roles PRIMARY KEY (user_id, role_id),
    CONSTRAINT fk_users FOREIGN KEY(user_id) REFERENCES users(id),
    CONSTRAINT fk_roles FOREIGN KEY(role_id) REFERENCES roles(id)
);

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');