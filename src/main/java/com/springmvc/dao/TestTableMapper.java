package com.springmvc.dao;

import com.springmvc.entity.TestTable;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TestTableMapper {

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
