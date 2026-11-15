package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoSeekBean extends BaseBean {
    public static String ACT_PSEEK = "pseek";
    public String act;
    public HashMap<String, String> param;
    public String seek_type;

    public PlayerVideoSeekBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_PSEEK;
        this.seek_type = String.valueOf(getMapValues(map, KeysContants.PlayerSeekParams.SEEK_TYPE.getValue()));
        this.param = map;
    }

    public Map<String, String> getPlayerVideoSeekParams() {
        HashMap map = new HashMap();
        map.putAll(this.param);
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.PlayerSeekParams.SEEK_TYPE.getValue(), this.seek_type);
        map.putAll(getCommonParams());
        map.putAll(getPlayerCommonParams());
        return map;
    }
}
