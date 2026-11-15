package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class d30 {
    private static final List<String> a = defpackage.y71.n("native_ad_view", "timer_container", "timer_value", "skip_button", "linear_progress_view", "video_progress", "mute_button");

    public final Set<s20> a(JSONObject jSONObject) {
        y45.j(jSONObject, "designCard");
        ArrayList arrayList = new ArrayList();
        a(jSONObject, t20.b, new c30(this, arrayList));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!a.contains(((s20) obj).a())) {
                arrayList2.add(obj);
            }
        }
        return defpackage.i81.g1(arrayList2);
    }

    private static void a(JSONArray jSONArray, t20 t20Var, s74 s74Var) {
        Object obj;
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            y45.j(jSONArray, "<this>");
            try {
                obj = jSONArray.get(i);
            } catch (JSONException unused) {
                obj = null;
            }
            if (obj instanceof JSONObject) {
                a((JSONObject) obj, t20Var, s74Var);
            } else if (obj instanceof JSONArray) {
                a((JSONArray) obj, t20Var, s74Var);
            }
        }
    }

    private static void a(JSONObject jSONObject, t20 t20Var, s74 s74Var) {
        Object obj;
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("extensions");
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (y45.e((jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("params")) == null) ? null : jSONObjectOptJSONObject.optString("view_name"), "native_ad_view")) {
                    t20Var = t20.c;
                    break;
                }
            }
        }
        ((c30) s74Var).invoke(jSONObject, t20Var);
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys(...)");
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
            if (obj instanceof JSONObject) {
                a((JSONObject) obj, t20Var, s74Var);
            } else if (obj instanceof JSONArray) {
                a((JSONArray) obj, t20Var, s74Var);
            }
        }
    }
}
