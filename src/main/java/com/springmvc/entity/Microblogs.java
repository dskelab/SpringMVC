package com.springmvc.entity;

import java.sql.Timestamp;

public class Microblogs {
    private Integer mbId;

    private Integer userId;

    private String mbText;

    private String mbPicture;

    private String mbVideo;

    private Timestamp mbTime;

    private Integer likeTimes;

    private Integer commentTimes;

    private Integer forwardTimes;

    public Integer getMbId() {
        return mbId;
    }

    public void setMbId(Integer mbId) {
        this.mbId = mbId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getMbText() {
        return mbText;
    }

    public void setMbText(String mbText) {
        this.mbText = mbText;
    }

    public String getMbPicture() {
        return mbPicture;
    }

    public void setMbPicture(String mbPicture) {
        this.mbPicture = mbPicture;
    }

    public String getMbVideo() {
        return mbVideo;
    }

    public void setMbVideo(String mbVideo) {
        this.mbVideo = mbVideo;
    }

    public Timestamp getMbTime() {
        return mbTime;
    }

    public void setMbTime(Timestamp mbTime) {
        this.mbTime = mbTime;
    }

    public Integer getLikeTimes() {
        return likeTimes;
    }

    public void setLikeTimes(Integer likeTimes) {
        this.likeTimes = likeTimes;
    }

    public Integer getCommentTimes() {
        return commentTimes;
    }

    public void setCommentTimes(Integer commentTimes) {
        this.commentTimes = commentTimes;
    }

    public Integer getForwardTimes() {
        return forwardTimes;
    }

    public void setForwardTimes(Integer forwardTimes) {
        this.forwardTimes = forwardTimes;
    }
}