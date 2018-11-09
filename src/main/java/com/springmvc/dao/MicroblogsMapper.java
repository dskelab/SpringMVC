package com.springmvc.dao;

import com.springmvc.entity.Microblogs;

public interface MicroblogsMapper {
    int deleteByPrimaryKey(Integer mbId);

    int insert(Microblogs record);

    int insertSelective(Microblogs record);

    Microblogs selectByPrimaryKey(Integer mbId);

    int updateByPrimaryKeySelective(Microblogs record);

    int updateByPrimaryKey(Microblogs record);
}