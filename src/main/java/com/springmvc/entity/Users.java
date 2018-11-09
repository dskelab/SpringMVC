package com.springmvc.entity;

import java.sql.Timestamp;

public class Users {
    /*用户ID*/
    private Integer userId;
    /*用户名*/
    private String userName;
    /*密码*/
    private String passWord;
    /*年龄*/
    private Integer age;
    /*性别*/
    private Integer sex;
    /*生日*/
    private Timestamp birthday;
    /*手机号*/
    private String phoneNumber;
    /*邮箱*/
    private String email;
    /*个人介绍*/
    private String selfIntroduction;
    /*用户头像*/
    private String profilePicture;
    /*注册时间*/
    private Timestamp registerTime;
    /*注册地*/
    private String registerLocation;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Timestamp getBirthday() {
        return birthday;
    }

    public void setBirthday(Timestamp birthday) {
        this.birthday = birthday;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSelfIntroduction() {
        return selfIntroduction;
    }

    public void setSelfIntroduction(String selfIntroduction) {
        this.selfIntroduction = selfIntroduction;
    }

    public String getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }

    public Timestamp getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Timestamp registerTime) {
        this.registerTime = registerTime;
    }

    public String getRegisterLocation() {
        return registerLocation;
    }

    public void setRegisterLocation(String registerLocation) {
        this.registerLocation = registerLocation;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", passWord='" + passWord + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", birthday=" + birthday +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", selfIntroduction='" + selfIntroduction + '\'' +
                ", profilePicture='" + profilePicture + '\'' +
                ", registerTime=" + registerTime +
                ", registerLocation='" + registerLocation + '\'' +
                '}';
    }
}