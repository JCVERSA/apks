package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.json.JsonInterface;

public class HeartBeatBean extends BaseBean implements JsonInterface {
    public String act;
    public String ap;
    public String bdid;
    public String cf;
    public String cid;
    public String cpn;
    public String ct;
    public String def;
    public String ht;
    public String idx;
    public String istry;
    public String pay;
    public String plid;
    public String pt;
    public String suuid;
    public String td;
    public String vid;
    public String vts;

    public HeartBeatBean(Context context) {
        super(context);
    }
}
