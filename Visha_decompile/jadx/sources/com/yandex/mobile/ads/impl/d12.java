package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class d12 implements b0<w02> {
    private final xj a;
    private final a12 b;

    public d12(sp1 sp1Var, xj xjVar, a12 a12Var) {
        y45.j(sp1Var, "reporter");
        y45.j(xjVar, "base64EncodingParameters");
        y45.j(a12Var, "itemParser");
        this.a = xjVar;
        this.b = a12Var;
    }

    @Override
    public final x a(JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        String strA = j91.a(jSONObject, "jsonAsset", "type", "jsonAttribute", "type");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        JSONArray jSONArray = jSONObject.getJSONArray("items");
        y45.g(jSONArray);
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            a12 a12Var = this.b;
            y45.g(jSONObject2);
            arrayList.add(a12Var.a(jSONObject2, this.a));
        }
        if (arrayList.isEmpty()) {
            throw new t61("Native Ad json has not required attributes");
        }
        return new w02(strA, arrayList);
    }
}
