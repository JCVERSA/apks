package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class qa0 implements b0<oa0> {
    private final q82 a;

    public qa0(q82 q82Var) {
        y45.j(q82Var, "urlJsonParser");
        this.a = q82Var;
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
            y45.g(jSONObject2);
            y45.j(jSONObject2, "jsonAsset");
            y45.j("title", "jsonAttribute");
            String strOptString = jSONObject2.optString("title");
            if (strOptString == null || strOptString.length() == 0 || y45.e(strOptString, "null")) {
                throw new t61("Native Ad json has not required attributes");
            }
            y45.g(strOptString);
            this.a.getClass();
            arrayList.add(new oa0.a(strOptString, q82.a("url", jSONObject2)));
        }
        if (arrayList.isEmpty()) {
            throw new t61("Native Ad json has not required attributes");
        }
        return new oa0(strA, arrayList);
    }
}
