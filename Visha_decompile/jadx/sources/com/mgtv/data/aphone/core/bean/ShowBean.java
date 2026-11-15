package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.f;
import java.util.HashMap;
import java.util.Map;

public class ShowBean extends BaseBean {
    public static String ACT_SHOW = "show";
    public String act;
    public HashMap<String, String> param;

    public ShowBean(Context context, HashMap<String, String> map) {
        super(context);
        this.act = ACT_SHOW;
        this.param = map;
    }

    public Map<String, String> getShowParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Click.ACT.getValue(), this.act);
        map.put(KeysContants.CommonParams.BDSV.getValue(), f.b());
        map.putAll(this.param);
        return map;
    }
}
