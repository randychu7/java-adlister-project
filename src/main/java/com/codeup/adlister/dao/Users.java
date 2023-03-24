package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    User getUserById(long id);

    User getUserId(long id);

    void delete(long id);

    void update(String username, String lastname, String firstname, String phoneNumber, String email, String password, long id);
}
