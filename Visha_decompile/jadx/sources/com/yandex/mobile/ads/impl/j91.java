package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class j91 {
    public static String a(JSONObject jSONObject, String str, String str2, String str3, String str4) {
        y45.j(jSONObject, str);
        y45.j(str2, str3);
        return jSONObject.optString(str4);
    }
}
