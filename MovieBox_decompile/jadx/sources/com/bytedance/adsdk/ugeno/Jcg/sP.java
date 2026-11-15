package com.bytedance.adsdk.ugeno.Jcg;

import android.text.TextUtils;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class sP {
    public static void Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                jSONObject2.put(next, jSONObject.opt(next));
            } catch (JSONException unused) {
            }
        }
    }

    public static JSONObject Sj(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            return new JSONObject(str);
        } catch (JSONException unused) {
            return jSONObject;
        }
    }

    public static JSONArray Sj(String str, JSONArray jSONArray) {
        if (TextUtils.isEmpty(str)) {
            return jSONArray;
        }
        try {
            return new JSONArray(str);
        } catch (JSONException unused) {
            return jSONArray;
        }
    }

    public static void Sj(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray2 == null || jSONArray2.length() <= 0) {
            return;
        }
        if (jSONArray == null) {
            jSONArray = new JSONArray();
        }
        for (int i10 = 0; i10 < jSONArray2.length(); i10++) {
            Object objOpt = jSONArray2.opt(i10);
            if (objOpt != null) {
                jSONArray.put(objOpt);
            }
        }
    }
}
