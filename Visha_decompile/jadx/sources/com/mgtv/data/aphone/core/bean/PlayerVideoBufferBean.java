package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoBufferBean extends BaseBean {
    public static String ACT_PBUFFER = "pbuffer";
    public String act;
    public String buffer_kind;
    public String buffer_type;
    public HashMap<String, String> param;

    public PlayerVideoBufferBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_PBUFFER;
        this.buffer_type = String.valueOf(getMapValues(map, KeysContants.PlayerBufferParams.BUFFER_TYPE.getValue()));
        this.buffer_kind = String.valueOf(getMapValues(map, KeysContants.PlayerBufferParams.BUFFER_KIND.getValue()));
        this.param = map;
    }

    public Map<String, String> getPlayerVideoBufferParams() {
        HashMap map = new HashMap();
        map.putAll(this.param);
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.PlayerBufferParams.BUFFER_TYPE.getValue(), this.buffer_type);
        map.put(KeysContants.PlayerBufferParams.BUFFER_KIND.getValue(), this.buffer_kind);
        map.putAll(getCommonParams());
        map.putAll(getPlayerCommonParams());
        return map;
    }
}
