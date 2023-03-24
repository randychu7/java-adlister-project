USE adlister_project_db;

DROP TABLE IF EXISTS user_profile;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone_number VARCHAR(50),
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    model VARCHAR (240) NOT NULL,
    year INT NOT NULL,
    mileage INT NOT NULL,
    color VARCHAR (50) NOT NULL,
    car_condition VARCHAR(100) NOT NULL,
    post_date TIMESTAMP,
    description VARCHAR(500) NOT NULL,
    picture VARCHAR(500),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE
);

# CREATE TABLE user_profile (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     user_id INT UNSIGNED NOT NULL,
#     first_name VARCHAR(50) NOT NULL,
#     last_name VARCHAR(100) NOT NULL,
#     address VARCHAR(150),
#     city VARCHAR(50),
#     state VARCHAR(2),
#     zip_code int(10),
#     phone VARCHAR(20) NOT NULL,
#     PRIMARY KEY (id),
#     FOREIGN KEY (user_id) REFERENCES users(id)
#     ON DELETE CASCADE
# );
