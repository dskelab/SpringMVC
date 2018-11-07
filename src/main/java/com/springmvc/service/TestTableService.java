package com.springmvc.service;

import com.springmvc.entity.TestTable;

import java.util.List;

public interface TestTableService {

    int deleteByPrimaryKey(Integer id);

    int insert(TestTable testTable);

    TestTable selectByPrimaryKey(Integer id);

    int updateByPrimaryKey(TestTable testTable);
    /**
     * 查询所有表中内容
     * @return
     */
    List<TestTable> queryAll();
}
