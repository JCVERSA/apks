package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class C2827r2 {
    public static void a(Fl fl, JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject != null) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("deeplink_conditions");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject2.optString("key", null);
                    if (!TextUtils.isEmpty(strOptString)) {
                        String strOptString2 = jSONObjectOptJSONObject2.optString(ES6Iterator.VALUE_PROPERTY, null);
                        arrayList.add(new Pair(strOptString, strOptString2 != null ? new C2753o2(strOptString2) : null));
                    }
                }
            }
            fl.t = new C2778p2(arrayList);
        }
    }
}
