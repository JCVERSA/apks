package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.c;
import com.mgtv.data.aphone.core.j.f;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoHeartbeatBean extends BaseBean {
    public static String ACT_HB = "hb";
    public String act;
    public String ht;
    public String idx;
    public String isfull;

    public PlayerVideoHeartbeatBean(Context context, HashMap<String, String> map, String str, String str2) {
        super(context, map);
        this.act = ACT_HB;
        this.ht = str;
        this.idx = str2;
        this.isfull = f.b(context) ? "1" : "0";
    }

    public Map<String, String> getPlayerVideoHeartbeatParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.Hb.HT.getValue(), this.ht);
        map.put(KeysContants.Hb.IDX.getValue(), this.idx);
        map.put(KeysContants.Hb.ISFULL.getValue(), this.isfull);
        map.putAll(getCommonParams());
        map.putAll(getPlayerCommon());
        map.putAll(getPlayerHbCommon());
        c.b("big_data_sdk", "###############   getPlayerVideoHeartbeatParams(): " + map);
        return map;
    }
}
