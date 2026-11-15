package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class h80 {
    private final g80 a;

    public h80() {
        this(new g80());
    }

    public final LinkedHashMap a(JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys.hasNext()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!jSONObject.isNull(next)) {
                        Object obj = jSONObject.get(next);
                        if (obj instanceof JSONObject) {
                            JSONObject jSONObject2 = (JSONObject) obj;
                            this.a.getClass();
                            y45.j(jSONObject2, "jsonObject");
                            f80 f80Var = (y45.e(jSONObject2.optString("type"), "parcelable") && y45.e(wq0.a(ES6Iterator.VALUE_PROPERTY, jSONObject2), "null")) ? f80.a : null;
                            if (f80Var != null) {
                                y45.g(next);
                                linkedHashMap.put(next, f80Var);
                            }
                        } else {
                            y45.g(next);
                            y45.g(obj);
                            linkedHashMap.put(next, obj);
                        }
                    }
                }
                return linkedHashMap;
            }
        }
        return null;
    }

    public h80(g80 g80Var) {
        y45.j(g80Var, "extrasParcelableParser");
        this.a = g80Var;
    }
}
