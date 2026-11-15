package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.e;
import java.util.HashMap;
import java.util.Map;

public class SystemErrorBean extends BaseBean {
    public static final String SE_BID = "2.13.20";
    public String act;
    public String ec;
    public String ed;
    public String et;
    public HashMap<String, String> param;

    public SystemErrorBean(String str, Context context) {
        super(context);
        this.act = "crash";
        this.ec = "03";
        this.ed = str;
        this.et = e.b(System.currentTimeMillis());
        this.bid = SE_BID;
    }

    public Map<String, String> getSoCrashParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Drm.ACT.getValue(), this.act);
        map.put(KeysContants.Crash.ET.getValue(), this.et);
        map.put(KeysContants.Crash.ED.getValue(), "");
        map.put(KeysContants.Crash.BID.getValue(), this.bid);
        map.putAll(this.param);
        return map;
    }

    public Map<String, String> getSystemErrorParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Crash.ACT.getValue(), this.act);
        map.put(KeysContants.Crash.EC.getValue(), this.ec);
        map.put(KeysContants.Crash.ED.getValue(), this.ed);
        map.put(KeysContants.Crash.ET.getValue(), this.et);
        map.put(KeysContants.Crash.BID.getValue(), this.bid);
        map.putAll(getCommonParams());
        return map;
    }

    public SystemErrorBean(Context context, HashMap<String, String> map) {
        super(context);
        this.act = "crash";
        this.ec = "03";
        this.param = map;
        this.et = e.b(System.currentTimeMillis());
        this.bid = SE_BID;
    }
}
