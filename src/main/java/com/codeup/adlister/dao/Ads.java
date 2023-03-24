package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> userAdds(User user);

    Ad getById(long id);

    void delete(long id);

    void update(String title, String model, int year, int mileage, String color, String condition, String description, String picture, long id);

}
