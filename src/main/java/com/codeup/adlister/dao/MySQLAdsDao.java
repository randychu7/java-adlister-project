package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }



    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, model, year, mileage, color, car_condition, post_date, description) VALUES (?, ?, ?, ?, ?, ?, ?, NOW(), ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getModel());
            stmt.setString(4, ad.getYear());
            stmt.setString(5, ad.getMileage());
            stmt.setString(6, ad.getColor());
            stmt.setString(7, ad.getCarCondition());
            stmt.setString(8, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public List<Ad> userAdds(User user) {
        PreparedStatement stmt = null;
        try {

            String sql =  "SELECT * FROM ads JOIN users u on u.id = ads.user_id WHERE user_id=?";

            stmt = connection.prepareStatement(sql);
            stmt.setLong(1, user.getId());
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Ad getById(long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE id=?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);

        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public void delete(long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("DELETE FROM ads WHERE id = ?");
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public void update(String title, String model, int year, int mileage, String color, String condition, String description, String picture, long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("UPDATE ads SET title = ?, model = ?, year = ?, mileage = ?, " +
                    "color = ?, car_condition = ?, description = ?, picture = ? WHERE id = ?");
            stmt.setString(1, title);
            stmt.setString(2, model);
            stmt.setInt(3, year);
            stmt.setInt(4, mileage);
            stmt.setString(5, color);
            stmt.setString(6, condition);
            stmt.setString(7, description);
            stmt.setString(8, picture);
            stmt.setLong(9, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("model"),
            rs.getString("year"),
            rs.getString("mileage"),
            rs.getString("color"),
            rs.getString("car_condition"),
            rs.getString("post_date"),
            rs.getString("description"),
            rs.getString("picture")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
