package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoOffLineAPlayVvBean extends BaseBean {
    public static String ACT_APLAY = "aplay";
    public static final String APLAY_BID = "2.1.1.3";
    public String act;
    public String bid;
    public HashMap<String, String> param;

    public PlayerVideoOffLineAPlayVvBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_APLAY;
        this.bid = APLAY_BID;
        this.param = map;
    }

    public Map<String, String> getPlayerVideoAPlayVvParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Aplay.ACT.getValue(), this.act);
        map.put(KeysContants.Aplay.BID.getValue(), this.bid);
        map.put(KeysContants.Aplay.IDX.getValue(), "");
        map.putAll(getCommonParams());
        map.putAll(getPlayerCommon());
        map.putAll(getPlayerVvCommon());
        map.putAll(getPlayerOflineVvCommon());
        return map;
    }
}
