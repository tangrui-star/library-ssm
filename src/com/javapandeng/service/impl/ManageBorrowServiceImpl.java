package com.javapandeng.service.impl;

import com.javapandeng.base.BaseDao;
import com.javapandeng.base.BaseServiceImpl;
import com.javapandeng.mapper.ManageBorrowMapper;
import com.javapandeng.mapper.ManageMapper;
import com.javapandeng.po.Manage;
import com.javapandeng.po.ManageBorrow;
import com.javapandeng.service.ManageBorrowService;
import com.javapandeng.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManageBorrowServiceImpl extends BaseServiceImpl<ManageBorrow> implements ManageBorrowService {

    @Autowired
    ManageBorrowMapper manageBorrowMapper;

    @Override
    public BaseDao<ManageBorrow> getBaseDao() {
        return manageBorrowMapper;
    }
}
