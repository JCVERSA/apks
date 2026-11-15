package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.c;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoPvBean extends BaseBean {
    public static String ACT_PPV = "ppv";
    public static String BID_PPV = "27.8.1";
    public String act;
    public HashMap<String, String> param;

    public PlayerVideoPvBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_PPV;
        this.bid = BID_PPV;
        this.param = map;
        c.b("big_data_sdk", "#############  PlayerVideoPvBean  act = " + this.act);
    }

    public Map<String, String> getPlayerVideoPvParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.PlayerCommonParams.BID.getValue(), this.bid);
        map.putAll(getCommonParams());
        map.putAll(getParameter(this.param));
        c.b("big_data_sdk", "#############  PlayerVideoPvBean ()  act = " + this.act);
        return map;
    }
}
