package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import android.text.TextUtils;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class ErrorEventBean extends BaseBeanNew {
    public static String LOGTYPE_ERROR = "error";
    public String bid;
    public String code;
    public String ed;
    public HashMap<String, String> lob;
    public String logtype;
    public String termid;

    public ErrorEventBean(Context context, String str, String str2, HashMap<String, String> map) {
        super(context);
        this.termid = "9";
        this.bid = "1.13.20";
        this.logtype = LOGTYPE_ERROR;
        this.code = str2;
        this.ed = str;
        this.lob = map;
    }

    private String addParam(String str, String str2, String str3) {
        String str4 = str2 + '=';
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append('&');
        }
        sb.append(str4);
        sb.append(str3);
        return sb.toString();
    }

    private String getLob() {
        String str;
        HashMap<String, String> map = this.lob;
        if (map == null || map.isEmpty()) {
            str = "";
        } else {
            str = "";
            for (Map.Entry<String, String> entry : this.lob.entrySet()) {
                str = str + addParam(str, entry.getKey(), entry.getValue());
            }
        }
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str;
        }
    }

    public Map<String, String> getErrorParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Crash.LOGTYPE.getValue(), this.logtype);
        map.put(KeysContants.Crash.CODE.getValue(), this.code);
        map.put(KeysContants.Crash.ED.getValue(), com.mgtv.data.aphone.core.j.a.a(this.ed.getBytes()));
        map.put(KeysContants.Crash.LOB.getValue(), getLob());
        map.put(KeysContants.Crash.DID.getValue(), this.did);
        map.put(KeysContants.Crash.TERMID.getValue(), this.termid);
        map.put(KeysContants.Crash.VER.getValue(), com.hunantv.imgo.util.b.g());
        map.put(KeysContants.Crash.SVER.getValue(), this.sver);
        map.put(KeysContants.Crash.UUID.getValue(), this.uuid);
        map.put(KeysContants.Crash.SESSIONID.getValue(), this.sessionid);
        map.put(KeysContants.Crash.TIME.getValue(), this.time);
        map.put(KeysContants.Crash.BID.getValue(), this.bid);
        map.put(KeysContants.Crash.ABROAD.getValue(), this.abroad);
        return map;
    }
}
