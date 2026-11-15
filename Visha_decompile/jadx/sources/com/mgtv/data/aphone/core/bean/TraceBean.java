package com.mgtv.data.aphone.core.bean;

import com.mgtv.json.JsonInterface;

public class TraceBean implements JsonInterface {
    public TraceTaskBean data;
    public String msg;
    public int status;

    public String toString() {
        return com.mgtv.json.a.a(this, (Class<? extends TraceBean>) TraceBean.class);
    }
}
