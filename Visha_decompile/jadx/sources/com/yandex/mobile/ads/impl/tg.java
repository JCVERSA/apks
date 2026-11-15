package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class tg {
    private final sp1 a;
    private final wr0 b;
    private final Context c;

    public tg(Context context, sp1 sp1Var, wr0 wr0Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(wr0Var, "linkJsonParser");
        this.a = sp1Var;
        this.b = wr0Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = applicationContext;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final ig<?> a(JSONObject jSONObject, xj xjVar) throws JSONException, t61 {
        ug xd1Var;
        y45.j(jSONObject, "jsonAsset");
        y45.j(xjVar, "base64EncodingParameters");
        if (!l91.a(jSONObject, "name", "type", "clickable", "required")) {
            throw new t61("Native Ad json has not required attributes");
        }
        String strA = j91.a(jSONObject, "jsonAsset", "type", "jsonAttribute", "type");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        y45.j(jSONObject, "jsonAsset");
        y45.j("name", "jsonAttribute");
        String strOptString = jSONObject.optString("name");
        if (strOptString == null || strOptString.length() == 0 || y45.e(strOptString, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strOptString);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AuthInfo.Component.CODE_LINK);
        vr0 vr0VarA = jSONObjectOptJSONObject == null ? null : this.b.a(jSONObjectOptJSONObject, xjVar);
        Context context = this.c;
        sp1 sp1Var = this.a;
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(strOptString, "name");
        y45.j(strA, "type");
        y45.j(xjVar, "base64EncodingParameters");
        if (y45.e(strOptString, "close_button")) {
            xd1Var = new up();
        } else {
            if (!y45.e(strOptString, "feedback")) {
                switch (strA.hashCode()) {
                    case -1034364087:
                        if (strA.equals("number")) {
                            xd1Var = new xd1(new rr1());
                        }
                        break;
                    case -891985903:
                        if (strA.equals("string")) {
                            xd1Var = new g32();
                        }
                        break;
                    case -410956671:
                        if (strA.equals(TtmlNode.RUBY_CONTAINER)) {
                            xd1Var = new f50();
                        }
                        break;
                    case 100313435:
                        if (strA.equals("image")) {
                            xd1Var = new ak0();
                        }
                        break;
                    case 103772132:
                        if (strA.equals("media")) {
                            xd1Var = new fx0(context, sp1Var, xjVar, new ow0(p92.a(xjVar.b())), new ye2(context, sp1Var, xjVar), new pj0(), new dk0());
                        }
                        break;
                }
                sp0.b(new Object[0]);
                throw new t61("Native Ad json has not required attributes");
            }
            xd1Var = new bb0(new ak0());
        }
        return new ig<>(strOptString, strA, xd1Var.a(jSONObject), vr0VarA, jSONObject.getBoolean("clickable"), jSONObject.getBoolean("required"));
    }
}
