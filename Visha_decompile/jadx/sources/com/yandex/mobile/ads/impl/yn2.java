package com.yandex.mobile.ads.impl;

import android.os.Build;
import org.json.JSONObject;

public final class yn2 {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        io2.a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        io2.a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        io2.a(jSONObject, "os", "Android");
        return jSONObject;
    }
}
