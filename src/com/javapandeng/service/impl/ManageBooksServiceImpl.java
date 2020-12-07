package com.javapandeng.service.impl;

import com.javapandeng.base.BaseDao;
import com.javapandeng.base.BaseServiceImpl;
import com.javapandeng.mapper.ManageBooksMapper;
import com.javapandeng.po.ManageBooks;
import com.javapandeng.service.ManageBooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManageBooksServiceImpl extends BaseServiceImpl<ManageBooks> implements ManageBooksService {
    @Autowired
    ManageBooksMapper manageBooksMapper;


    @Override
    public BaseDao<ManageBooks> getBaseDao() {
        return manageBooksMapper;
    }
}
