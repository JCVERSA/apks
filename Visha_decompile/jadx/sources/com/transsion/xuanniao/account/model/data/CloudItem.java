package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class CloudItem implements Serializable {
    public static final String KEY_CATEGORY = "category";
    public static final String KEY_STRING_ID = "string_id";
    public static final String KEY_SYNC_STATE = "sync_state";
    public int category;
    public int resId;
    public boolean select = false;
    public boolean state;
}
