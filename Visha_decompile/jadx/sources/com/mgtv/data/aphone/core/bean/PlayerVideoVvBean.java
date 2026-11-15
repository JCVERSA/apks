package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.c;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoVvBean extends BaseBean {
    public static String ACT_PVV = "pvv";
    public static String BID_PVV = "27.8.2";
    public String act;
    public String codec_type;
    public String cost_time;
    public String decode_type;
    public String hard_decode;
    public String memory_play;
    public HashMap<String, String> param;

    public PlayerVideoVvBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_PVV;
        this.bid = BID_PVV;
        this.codec_type = String.valueOf(getMapValues(map, KeysContants.PlayerVvParams.CODEC_TYPE.name().toLowerCase()));
        this.cost_time = String.valueOf(getMapValues(map, KeysContants.PlayerVvParams.COST_TIME.name().toLowerCase()));
        this.hard_decode = String.valueOf(getMapValues(map, KeysContants.PlayerVvParams.HARD_DECODE.name().toLowerCase()));
        this.decode_type = String.valueOf(getMapValues(map, KeysContants.PlayerVvParams.DECODE_TYPE.name().toLowerCase()));
        this.memory_play = String.valueOf(getMapValues(map, KeysContants.PlayerVvParams.MEMORY_PLAY.name().toLowerCase()));
        this.param = map;
        c.b("big_data_sdk", "#############  PlayerVideoVvBean  act = " + this.act);
    }

    public Map<String, String> getPlayerVideoVvParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.PlayerCommonParams.BID.getValue(), BID_PVV);
        map.put(KeysContants.PlayerVvParams.CODEC_TYPE.getValue(), this.codec_type);
        map.put(KeysContants.PlayerVvParams.COST_TIME.getValue(), this.cost_time);
        map.put(KeysContants.PlayerVvParams.HARD_DECODE.getValue(), this.hard_decode);
        map.put(KeysContants.PlayerVvParams.DECODE_TYPE.getValue(), this.decode_type);
        map.put(KeysContants.PlayerVvParams.MEMORY_PLAY.getValue(), this.memory_play);
        map.putAll(getCommonParams());
        map.putAll(getParameter(this.param));
        c.b("big_data_sdk", "#############  PlayerVideoVvBean getPlayerVideoVvParams() act = " + this.act);
        return map;
    }
}
