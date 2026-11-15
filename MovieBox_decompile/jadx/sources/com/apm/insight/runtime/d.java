package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import java.util.HashMap;
import org.json.JSONObject;

public final class d {

    private static HashMap<String, d> f19173a = new HashMap<>();

    private JSONObject f19174b = null;

    private JSONObject f19175c = null;

    private boolean f19176d = false;

    private String f19177e;

    private d(JSONObject jSONObject, String str) {
        this.f19177e = str;
        a(jSONObject);
        f19173a.put(this.f19177e, this);
        com.apm.insight.a.a((Object) "after update aid ".concat(String.valueOf(str)));
    }

    private void a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        this.f19174b = jSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("error_module")) == null) {
            return;
        }
        this.f19176d = jSONObjectOptJSONObject.optInt("switcher") == 1 && jSONObjectOptJSONObject.optInt("err_sampling_rate") == 1;
    }

    @Nullable
    public static JSONObject b(String str) {
        d dVar = f19173a.get(str);
        if (dVar != null) {
            return dVar.f19174b;
        }
        return null;
    }

    public static d c(String str) {
        return f19173a.get(str);
    }

    public static long d(String str) {
        d dVar = f19173a.get(str);
        if (dVar == null) {
            return 3600000L;
        }
        try {
            return Long.decode(com.apm.insight.a.a(dVar.f19174b, "over_all", "get_settings_interval")).longValue() * 1000;
        } catch (Throwable unused) {
            return 3600000L;
        }
    }

    public static boolean e(String str) {
        JSONObject jSONObject;
        d dVar = f19173a.get(str);
        return (dVar == null || (jSONObject = dVar.f19174b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) ? false : true;
    }

    public static boolean f(String str) {
        JSONObject jSONObject;
        d dVar = f19173a.get(str);
        return (dVar == null || (jSONObject = dVar.f19174b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) ? false : true;
    }

    public static boolean g(String str) {
        JSONObject jSONObject;
        d dVar = f19173a.get(str);
        return (dVar == null || (jSONObject = dVar.f19174b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) ? false : true;
    }

    public final boolean a() {
        if (this.f19174b == null) {
            return false;
        }
        return this.f19176d;
    }

    public static boolean a(String str) {
        return f19173a.get(str) != null;
    }

    public static void a(String str, JSONObject jSONObject) {
        d dVar = f19173a.get(str);
        if (dVar != null) {
            dVar.a(jSONObject);
        } else {
            new d(jSONObject, str);
        }
    }
}
