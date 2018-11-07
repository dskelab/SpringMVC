package com.springmvc.service.impl;

import com.springmvc.dao.TestTableMapper;
import com.springmvc.entity.TestTable;
import com.springmvc.service.TestTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestTableServiceImpl implements TestTableService {
    @Autowired
    private TestTableMapper mapper;


    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    public int insert(TestTable testTable) {
        return 0;
    }

    public TestTable selectByPrimaryKey(Integer id) {
        return null;
    }

    public int updateByPrimaryKey(TestTable testTable) {
        return 0;
    }
    /**
     * 查询所有表中内容
     * @return
     */
    public List<TestTable> queryAll() {
        return mapper.queryAll();
    }
}
