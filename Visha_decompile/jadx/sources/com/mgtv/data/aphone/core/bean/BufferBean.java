package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class BufferBean extends BaseBean {
    public static String ACT_BUFFER = "buffer";
    public String act;
    public String idx;

    public BufferBean(Context context, HashMap<String, String> map, String str) {
        super(context, map);
        this.act = ACT_BUFFER;
        this.idx = str;
    }

    public Map<String, String> getBufferParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Buffer.ACT.getValue(), this.act);
        map.put(KeysContants.Buffer.IDX.getValue(), this.idx);
        map.putAll(getCommonParams());
        map.putAll(getPlayerCommon());
        map.putAll(getPlayerBufferCommon());
        return map;
    }
}
