package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.i;
import com.mgtv.data.aphone.core.webview.BigDataSDKJSParameter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class ClickEventBean extends BaseBeanNew {
    public static String LOGTYPE_CLICK = "click";
    public String cntp;
    public String dc;
    public String label;
    public String lob;
    public String logtype;
    public String mod;
    public BigDataSDKJSParameter parameter;
    public String pos;

    public ClickEventBean(Context context, BigDataSDKJSParameter bigDataSDKJSParameter) {
        super(context);
        this.parameter = bigDataSDKJSParameter;
        this.logtype = LOGTYPE_CLICK;
        this.cntp = bigDataSDKJSParameter.cntp;
        this.dc = UUID.randomUUID().toString();
        this.label = bigDataSDKJSParameter.label;
        this.mod = bigDataSDKJSParameter.mod;
        this.pos = KeysContants.a;
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
                stringBuffer.append("&dc=" + i.b(this.parameter.dc));
                stringBuffer.append("&vid=" + i.b(this.parameter.vid));
                stringBuffer.append("&cont=" + i.b(this.parameter.cont));
                stringBuffer.append("&direct=" + i.b(this.parameter.direct));
                stringBuffer.append("&addr=" + i.b(this.parameter.addr));
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
                stringBuffer.append("&dc=" + i.b(this.parameter.dc));
                stringBuffer.append("&vid=" + i.b(this.parameter.vid));
                stringBuffer.append("&cont=" + i.b(this.parameter.cont));
                stringBuffer.append("&direct=" + i.b(this.parameter.direct));
                stringBuffer.append("&addr=" + i.b(this.parameter.addr));
            }
            return URLEncoder.encode(stringBuffer.toString(), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public Map<String, String> getClickParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.Click.LOGTYPE.getValue(), this.logtype);
        map.put(KeysContants.Click.CNTP.getValue(), this.cntp);
        map.put(KeysContants.Click.POS.getValue(), i.b(this.pos));
        map.put(KeysContants.Click.LABEL.getValue(), i.b(this.label));
        map.put(KeysContants.Click.MOD.getValue(), i.b(this.mod));
        map.put(KeysContants.Click.DC.getValue(), this.dc);
        map.put(KeysContants.Click.LOB.getValue(), getLob());
        map.putAll(getCommonParams());
        return map;
    }
}
