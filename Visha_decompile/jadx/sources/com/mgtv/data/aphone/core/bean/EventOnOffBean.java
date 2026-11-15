package com.mgtv.data.aphone.core.bean;

import com.mgtv.json.JsonInterface;

public class EventOnOffBean implements JsonInterface {
    public String appId;
    public Object config;
    public Object data;
    public String version;

    public String toString() {
        return com.mgtv.json.a.a(this, (Class<? extends EventOnOffBean>) EventOnOffBean.class);
    }
}
