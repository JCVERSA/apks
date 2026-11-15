package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONException;
import org.json.JSONObject;

public final class tj implements o92 {
    private final sj a;

    public tj(sj sjVar) {
        y45.j(sjVar, StringLookupFactory.KEY_BASE64_DECODER);
        this.a = sjVar;
    }

    @Override
    public final String a(String str, JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        y45.j(str, "key");
        String strA = j91.a(jSONObject, "jsonAsset", str, "jsonAttribute", str);
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        this.a.getClass();
        String strB = sj.b(strA);
        if (strB == null || strB.length() == 0) {
            throw new t61("Native Ad json has attribute with broken base64 encoding");
        }
        return strB;
    }
}
