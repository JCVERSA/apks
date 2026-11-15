package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoAPlayVvBean extends BaseBean {
    public static String ACT_APLAY = "aplay";
    public static final String APLAY_BID = "2.1.1.1.1";
    public String act;
    public String bid;
    public HashMap<String, String> param;

    public PlayerVideoAPlayVvBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_APLAY;
        this.bid = APLAY_BID;
        this.param = map;
    }

    public Map<String, String> getPlayerVideoAPlayVvParams() {
        HashMap map = new HashMap();
        map.putAll(this.param);
        map.put(KeysContants.Aplay.ACT.getValue(), this.act);
        map.put(KeysContants.Aplay.BID.getValue(), this.bid);
        map.put(KeysContants.Aplay.IDX.getValue(), "0");
        map.putAll(getCommonParams());
        map.putAll(getPlayerCommon());
        map.putAll(getPlayerVvCommon());
        return map;
    }
}
