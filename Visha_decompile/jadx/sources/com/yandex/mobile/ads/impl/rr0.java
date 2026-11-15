package com.yandex.mobile.ads.impl;

import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

public final class rr0 {
    private final dh a;
    private final el2 b;
    private final wr0 c;

    public rr0(sp1 sp1Var, dh dhVar) {
        y45.j(sp1Var, "reporter");
        y45.j(dhVar, "assetsJsonParser");
        this.a = dhVar;
        this.b = new el2();
        this.c = new wr0(sp1Var);
    }

    public final qr0 a(XmlPullParser xmlPullParser, xj xjVar) throws JSONException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        try {
            qr0.a aVar = new qr0.a();
            this.b.getClass();
            JSONObject jSONObject = new JSONObject(el2.c(xmlPullParser));
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (y45.e("assets", next)) {
                    aVar.a(this.a.a(jSONObject, xjVar));
                } else if (y45.e(AuthInfo.Component.CODE_LINK, next)) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    wr0 wr0Var = this.c;
                    y45.g(jSONObject2);
                    aVar.a(wr0Var.a(jSONObject2, xjVar));
                }
            }
            return aVar.a();
        } catch (Exception e) {
            throw new JSONException(e.getMessage());
        }
    }
}
