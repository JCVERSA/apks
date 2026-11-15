package com.mgtv.ssp.bean;

import com.hunantv.imgo.entity.JsonInterface;
import com.mgtv.ssp.bean.config.SspSdkConfig;

public class InitBean implements JsonInterface {
    public int code;
    public SspSdkConfig data;
    public String msg;
}
