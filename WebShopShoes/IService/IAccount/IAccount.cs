﻿using WebShopShoes.Dto.AccountDto;
using WebShopShoes.Model.Account;

namespace WebShopShoes.IService.IAccount
{
    public interface IAccount
    {
        ApiResponse Register(AccountDto accountDto);
    }
}