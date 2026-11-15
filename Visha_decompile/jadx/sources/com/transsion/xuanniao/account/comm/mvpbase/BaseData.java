package com.transsion.xuanniao.account.comm.mvpbase;

import com.transsion.xuanniao.account.model.data.ErrorExtend;
import java.io.Serializable;

public class BaseData implements Serializable {
    public int code;
    public ErrorExtend errorExtend;
    public String message;
}
