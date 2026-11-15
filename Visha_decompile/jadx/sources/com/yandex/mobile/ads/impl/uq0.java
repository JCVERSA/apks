package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class uq0 {
    public static HashMap a(JSONObject jSONObject) {
        Object obj;
        y45.j(jSONObject, "jsonObject");
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        y45.g(itKeys);
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            y45.g(next);
            y45.j(jSONObject, "<this>");
            y45.j(next, "key");
            try {
                obj = jSONObject.get(next);
            } catch (JSONException unused) {
                obj = null;
            }
            if (obj != null) {
                if (obj instanceof JSONObject) {
                    map.put(next, a((JSONObject) obj));
                } else {
                    map.put(next, obj);
                }
            }
        }
        return map;
    }
}
