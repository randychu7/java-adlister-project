package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;

    private String model;

    private String year;

    private String mileage;

    private String color;

    private String carCondition;

    private String date;

    private String description;

    private String picture;

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMileage() {
        return mileage;
    }

    public void setMileage(String mileage) {
        this.mileage = mileage;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCarCondition() {
        return carCondition;
    }

    public void setCarCondition(String carCondition) {
        this.carCondition = carCondition;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Ad(long userId, String title, String model, String year, String mileage, String color, String carCondition, String description) {
        this.userId = userId;
        this.title = title;
        this.model = model;
        this.year = year;
        this.mileage = mileage;
        this.color = color;
        this.carCondition = carCondition;
        this.description = description;
    }

    public Ad(long id, long userId, String title, String model, String year, String mileage, String color, String carCondition, String date, String description, String picture) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.model = model;
        this.year = year;
        this.mileage = mileage;
        this.color = color;
        this.carCondition = carCondition;
        this.date = date;
        this.description = description;
        this.picture = picture;
    }

    public Ad(long userId, String title, String model, String year, String mileage, String color, String carCondition, String description, String picture) {
        this.userId = userId;
        this.title = title;
        this.model = model;
        this.year = year;
        this.mileage = mileage;
        this.color = color;
        this.carCondition = carCondition;
        this.description = description;
        this.picture = picture;
    }

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad() {
    }

    public Long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
