package com.apm.insight.entity;

import android.os.Environment;
import com.apm.insight.e;
import com.apm.insight.l.f;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class d {

    private static String f18873a;

    private static JSONObject f18874b;

    private static void a() {
        if (f18873a == null) {
            f18873a = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/" + e.g().getPackageName() + "/AutomationTestInfo.json";
        }
        if (f18874b == null) {
            try {
                f18874b = new JSONObject(f.a(f18873a, "\n"));
            } catch (IOException unused) {
                f18874b = new JSONObject();
            } catch (JSONException unused2) {
                f18874b = new JSONObject();
            }
        }
    }

    public static void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            a();
            JSONObject jSONObject2 = f18874b;
            if (jSONObject2 != null) {
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("slardar_filter");
                if (com.apm.insight.a.a(jSONObjectOptJSONObject)) {
                    return;
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("filters");
                if (jSONObjectOptJSONObject2 == null) {
                    jSONObjectOptJSONObject2 = new JSONObject();
                    try {
                        jSONObject.put("filters", jSONObjectOptJSONObject2);
                    } catch (JSONException unused) {
                    }
                }
                a.b(jSONObjectOptJSONObject2, jSONObjectOptJSONObject);
            }
        } catch (Throwable unused2) {
        }
    }

    public static void a(JSONObject jSONObject) {
        Object objOpt;
        if (jSONObject == null) {
            return;
        }
        try {
            a();
            JSONObject jSONObject2 = f18874b;
            if (jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!"slardar_filter".equals(next) && (objOpt = f18874b.opt(next)) != null) {
                        try {
                            jSONObject.put(next, objOpt);
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }
}
