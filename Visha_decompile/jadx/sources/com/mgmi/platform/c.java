package com.mgmi.platform;

import org.json.JSONObject;

public final class c {
    public static boolean a() {
        return true;
    }

    public static boolean b() {
        return true;
    }

    public static boolean c() {
        return false;
    }

    public static boolean d() {
        if (com.mgmi.platform.b.b.a().h() == null) {
            return true;
        }
        return com.mgmi.platform.b.b.a().h().a();
    }

    public static String e() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("iplay", 18);
            jSONObject.put("sdkVer", com.mgmi.platform.b.b.a().b());
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
