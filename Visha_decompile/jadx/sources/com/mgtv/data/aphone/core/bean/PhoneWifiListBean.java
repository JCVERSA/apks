package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.c;
import java.util.HashMap;
import java.util.Map;

public class PhoneWifiListBean extends BaseBean {
    public static String ACT_APPLS = "wifi";
    public String act;
    public String bid;
    public String wip;
    public String wls;
    public String wmac;
    public String wname;

    public PhoneWifiListBean(Context context, String str, String str2, String str3, String str4) {
        super(context);
        this.act = ACT_APPLS;
        this.wls = str4;
        this.wname = str;
        this.wmac = str2;
        this.wip = str3;
    }

    public Map<String, String> getApplsParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PhoneWifi.ACT.getValue(), this.act);
        map.put(KeysContants.PhoneWifi.WIP.getValue(), this.wip);
        map.put(KeysContants.PhoneWifi.WNAME.getValue(), this.wname);
        map.put(KeysContants.PhoneWifi.WMAC.getValue(), this.wmac);
        map.put(KeysContants.PhoneWifi.WLS.getValue(), this.wls);
        map.putAll(getCommonParams());
        c.b("big_data_sdk", "###############   getApplsParams(): " + map);
        return map;
    }
}
