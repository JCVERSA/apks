package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class AphoneAppListBean extends BaseBean {
    public static String ACT_APPLS = "appls";
    public static final String APPLS_BID = "2.9.1";
    public String act;
    public String bid;
    public String list;

    public AphoneAppListBean(Context context, String str) {
        super(context);
        this.act = ACT_APPLS;
        this.bid = APPLS_BID;
        this.list = str;
    }

    public Map<String, String> getApplsParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Appls.ACT.getValue(), this.act);
        map.put(KeysContants.Appls.BID.getValue(), this.bid);
        map.put(KeysContants.Appls.LIST.getValue(), this.list);
        map.putAll(getCommonParams());
        return map;
    }
}
