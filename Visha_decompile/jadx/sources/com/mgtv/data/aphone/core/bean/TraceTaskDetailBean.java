package com.mgtv.data.aphone.core.bean;

import com.mgtv.json.JsonInterface;

public class TraceTaskDetailBean implements JsonInterface {
    public String[] logs;
    public int netstatus;
    public String taskid;

    public String toString() {
        return com.mgtv.json.a.a(this, (Class<? extends TraceTaskDetailBean>) TraceTaskDetailBean.class);
    }
}
