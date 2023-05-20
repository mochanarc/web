package com.itheima.service.impl;

import com.itheima.dao.AccountMapper;
import com.itheima.domain.Account;
import com.itheima.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service

public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountMapper accountMapper;
    @Override
    public Account findAccountByEmail(String email){
        return accountMapper.findAccountByEmail(email);
    }
    @Override
    public int addAccount(Account account) {
        return accountMapper.addAccount(account);
    }

}
