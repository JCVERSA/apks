package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class ClickBean extends BaseBean {
    public HashMap<String, String> param;
    public String runsid;

    public ClickBean(Context context, HashMap<String, String> map) {
        super(context);
        this.param = map;
        this.runsid = com.mgtv.data.aphone.core.f.a.c().a();
    }

    public Map<String, String> getClickParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Click.RUNSID.getValue(), this.runsid);
        map.putAll(this.param);
        KeysContants.CommonParams commonParams = KeysContants.CommonParams.ABROAD;
        map.put(commonParams.getValue(), getStr(String.valueOf(this.param.get(commonParams.getValue()))));
        return map;
    }
}
