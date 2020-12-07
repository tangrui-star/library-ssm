package com.javapandeng.service.impl;

import com.javapandeng.base.BaseDao;
import com.javapandeng.base.BaseServiceImpl;
import com.javapandeng.mapper.ReaderMapper;
import com.javapandeng.po.Reader;
import com.javapandeng.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReaderServiceImpl extends BaseServiceImpl<Reader> implements ReaderService {

    @Autowired
    private ReaderMapper readerMapper;

    @Override
    public BaseDao<Reader> getBaseDao() {
        return readerMapper;
    }
}
