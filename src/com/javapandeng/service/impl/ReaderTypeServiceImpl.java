package com.javapandeng.service.impl;

import com.javapandeng.base.BaseDao;
import com.javapandeng.base.BaseServiceImpl;
import com.javapandeng.mapper.ManageMapper;
import com.javapandeng.mapper.ReaderTypeMapper;
import com.javapandeng.po.Manage;
import com.javapandeng.po.ReaderType;
import com.javapandeng.service.ManageService;
import com.javapandeng.service.ReaderTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReaderTypeServiceImpl extends BaseServiceImpl<ReaderType> implements ReaderTypeService {

    @Autowired
    ReaderTypeMapper readerTypeMapper;

    @Override
    public BaseDao<ReaderType> getBaseDao() {
        return readerTypeMapper;
    }
}
