package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.f;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoOffLineHBBean extends BaseBean {
    public static String ACT_OFLHB = "oflhb";
    public static String OFLHB_BID = "2.3.10";
    public String act;
    public String bid;
    public String isfull;
    public HashMap<String, String> param;

    public PlayerVideoOffLineHBBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_OFLHB;
        this.bid = OFLHB_BID;
        this.isfull = f.b(context) ? "1" : "0";
        this.param = map;
    }

    public Map<String, String> getPlayerVideoHeartbeatParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.OffLineHb.BID.getValue(), this.bid);
        map.put(KeysContants.OffLineHb.ISFULL.getValue(), this.isfull);
        HashMap<String, String> map2 = this.param;
        if (map2 != null) {
            KeysContants.OffLineHb offLineHb = KeysContants.OffLineHb.LIST;
            map.put(offLineHb.getValue(), String.valueOf(map2.get(offLineHb.getValue())));
        }
        map.putAll(getCommonParams());
        map.putAll(this.param);
        return map;
    }
}
