package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class ApplyKeyRes implements Serializable {
    public String encryptedKey;
    public String encryptedTmpKey;
    public String iv;
    public String tag;
}
