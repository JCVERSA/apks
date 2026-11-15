package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class NewClickBean extends BaseBean {
    public static String ACT_CLICK = "click";
    public static String ACT_TYPE = "common";
    public HashMap<String, String> param;
    public String act = ACT_CLICK;
    public String type = ACT_TYPE;
    public String runsid = com.mgtv.data.aphone.core.f.a.c().a();

    public NewClickBean(Context context, HashMap<String, String> map) {
        this.param = map;
    }

    public Map<String, String> getClickParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Click.ACT.getValue(), this.act);
        map.put(KeysContants.Click.TYPE.getValue(), this.type);
        map.put(KeysContants.Click.RUNSID.getValue(), this.runsid);
        map.putAll(this.param);
        return map;
    }
}
