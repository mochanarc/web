package com.itheima.dao;

import com.itheima.domain.Account;

public interface AccountMapper {
    public Account findAccountByEmail(String email);
    public int addAccount(Account account);
}
