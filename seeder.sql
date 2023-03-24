USE adlister_project_db;

TRUNCATE ads;

INSERT INTO users (username, email, password)
VALUES
    ("will", "wparry@email", "codeup");

INSERT INTO ads (user_id, title, model, year, mileage, color, car_condition, post_date, description)
VALUES
    (1, "Great 2018 Tesla", "Model S", 2018, 22000, "Solid White", "Excellent", now(), "Like new"),
    (2, "Fresh off the Line", "Model X", 2023, 9, "Solid Black", "Excellent", now(), "New");
