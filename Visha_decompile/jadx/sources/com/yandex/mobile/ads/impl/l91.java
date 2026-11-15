package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class l91 {
    public static final boolean a(JSONObject jSONObject, String... strArr) {
        y45.j(jSONObject, "jsonNative");
        y45.j(strArr, "keys");
        for (String str : strArr) {
            if (!jSONObject.has(str)) {
                return false;
            }
        }
        return true;
    }
}
