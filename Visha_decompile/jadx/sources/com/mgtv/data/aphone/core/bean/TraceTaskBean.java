package com.mgtv.data.aphone.core.bean;

import com.mgtv.json.JsonInterface;
import java.util.List;

public class TraceTaskBean implements JsonInterface {
    public int localLog;
    public String reportUrl;
    public List<TraceTaskDetailBean> upTask;

    public String toString() {
        return com.mgtv.json.a.a(this, (Class<? extends TraceTaskBean>) TraceTaskBean.class);
    }
}
