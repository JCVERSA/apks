package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.i;
import com.mgtv.data.aphone.core.webview.BigDataSDKJSParameter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class PvEventBean extends BaseBeanNew {
    public static String LOGTYPE_PVS = "pv";
    public String cntp;
    public String lastp;
    public String lob;
    public String logtype;
    public BigDataSDKJSParameter parameter;

    public PvEventBean(Context context, BigDataSDKJSParameter bigDataSDKJSParameter) {
        super(context);
        this.parameter = bigDataSDKJSParameter;
        this.logtype = LOGTYPE_PVS;
        this.cntp = bigDataSDKJSParameter.cntp;
        this.lastp = bigDataSDKJSParameter.lastp;
    }

    private String getLob() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.parameter.lob;
        this.lob = str;
        try {
            if (i.a(str)) {
                stringBuffer.append("did=" + i.b(this.parameter.did));
                stringBuffer.append("&url=" + i.b(URLEncoder.encode(this.parameter.url, "UTF-8")));
                stringBuffer.append("&ref=" + i.b(URLEncoder.encode(this.parameter.ref, "UTF-8")));
                stringBuffer.append("&bid=" + i.b(this.parameter.bid));
                stringBuffer.append("&sessionid=" + i.b(this.parameter.sessionid));
                stringBuffer.append("&ch=" + i.b(this.parameter.ch));
                stringBuffer.append("&uuid=" + i.b(this.parameter.uuid));
                stringBuffer.append("&uvip=" + i.b(this.parameter.uvip));
                stringBuffer.append("&pref=" + i.b(this.parameter.pref));
                stringBuffer.append("&abroad=" + i.b(this.parameter.abroad));
                stringBuffer.append("&suuid=" + i.b(this.parameter.suuid));
                stringBuffer.append("&time=" + i.b(this.parameter.time));
                stringBuffer.append("&termid=" + i.b(this.parameter.termid));
                stringBuffer.append("&pix=" + i.b(this.parameter.pix));
                stringBuffer.append("&ver=" + i.b(this.parameter.ver));
            } else {
                stringBuffer.append(this.lob);
                stringBuffer.append("&did=" + i.b(this.parameter.did));
                stringBuffer.append("&url=" + i.b(URLEncoder.encode(this.parameter.url, "UTF-8")));
                stringBuffer.append("&ref=" + i.b(URLEncoder.encode(this.parameter.ref, "UTF-8")));
                stringBuffer.append("&bid=" + i.b(this.parameter.bid));
                stringBuffer.append("&sessionid=" + i.b(this.parameter.sessionid));
                stringBuffer.append("&ch=" + i.b(this.parameter.ch));
                stringBuffer.append("&uuid=" + i.b(this.parameter.uuid));
                stringBuffer.append("&uvip=" + i.b(this.parameter.uvip));
                stringBuffer.append("&pref=" + i.b(this.parameter.pref));
                stringBuffer.append("&abroad=" + i.b(this.parameter.abroad));
                stringBuffer.append("&suuid=" + i.b(this.parameter.suuid));
                stringBuffer.append("&time=" + i.b(this.parameter.time));
                stringBuffer.append("&termid=" + i.b(this.parameter.termid));
                stringBuffer.append("&pix=" + i.b(this.parameter.pix));
                stringBuffer.append("&ver=" + i.b(this.parameter.ver));
            }
            return URLEncoder.encode(stringBuffer.toString(), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public Map<String, String> getPvParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Pv.LOGTYPE.getValue(), this.logtype);
        map.put(KeysContants.Pv.LOB.getValue(), getLob());
        map.put(KeysContants.Pv.CNTP.getValue(), this.cntp);
        map.put(KeysContants.Pv.LASTP.getValue(), this.lastp);
        map.putAll(getCommonParams());
        return map;
    }
}
