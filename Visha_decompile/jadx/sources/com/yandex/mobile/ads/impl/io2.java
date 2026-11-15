package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.Log;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class io2 {
    private static WindowManager a;
    private static String[] b = {"x", "y", "width", "height"};
    static float c = Resources.getSystem().getDisplayMetrics().density;

    public static JSONObject a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / c);
            jSONObject.put("y", i2 / c);
            jSONObject.put("width", i3 / c);
            jSONObject.put("height", i4 / c);
        } catch (JSONException e) {
            Log.e("OMIDLIB", "Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c2 A[LOOP:1: B:53:0x00ad->B:58:0x00c2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:65:0x00c5 A[SYNTHETIC] */
    public static boolean b(@NonNull JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2;
        int i;
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        String[] strArr = b;
        for (int i2 = 0; i2 < 4; i2++) {
            String str = strArr[i2];
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        if (jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", "")) && Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")) == Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus"))) {
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("isFriendlyObstructionFor");
            JSONArray jSONArrayOptJSONArray4 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
            if (jSONArrayOptJSONArray3 == null && jSONArrayOptJSONArray4 == null) {
                jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
                jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
                if (jSONArrayOptJSONArray != null) {
                }
                if (jSONArrayOptJSONArray != null) {
                    for (i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        if (b(jSONArrayOptJSONArray.optJSONObject(i), jSONArrayOptJSONArray2.optJSONObject(i))) {
                        }
                    }
                    return true;
                }
                while (i < jSONArrayOptJSONArray.length()) {
                    if (b(jSONArrayOptJSONArray.optJSONObject(i), jSONArrayOptJSONArray2.optJSONObject(i))) {
                    }
                }
                return true;
            }
            if ((jSONArrayOptJSONArray3 == null && jSONArrayOptJSONArray4 == null) || (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray3.length() == jSONArrayOptJSONArray4.length())) {
                for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                    if (jSONArrayOptJSONArray3.optString(i3, "").equals(jSONArrayOptJSONArray4.optString(i3, ""))) {
                    }
                }
                jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
                jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 == null) {
                    return true;
                }
                if ((jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 == null) || (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray.length() == jSONArrayOptJSONArray2.length())) {
                    while (i < jSONArrayOptJSONArray.length()) {
                        if (b(jSONArrayOptJSONArray.optJSONObject(i), jSONArrayOptJSONArray2.optJSONObject(i))) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static void a(Context context) {
        if (context != null) {
            c = context.getResources().getDisplayMetrics().density;
            a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void a(JSONObject jSONObject) {
        float f;
        float f2;
        if (a != null) {
            Point point = new Point(0, 0);
            a.getDefaultDisplay().getRealSize(point);
            float f3 = point.x;
            float f4 = c;
            f = f3 / f4;
            f2 = point.y / f4;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        try {
            jSONObject.put("width", f);
            jSONObject.put("height", f2);
        } catch (JSONException unused) {
        }
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            Log.e("OMIDLIB", "JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException unused) {
        }
    }
}
