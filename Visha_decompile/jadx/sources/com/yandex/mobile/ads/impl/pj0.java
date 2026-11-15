package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class pj0 {
    private final q82 a;
    private final s02 b;

    public pj0() {
        this(new q82(), new s02());
    }

    public final xj0 b(JSONObject jSONObject) throws JSONException, t61 {
        r02 r02VarA;
        y45.j(jSONObject, "imageObject");
        int i = jSONObject.getInt("w");
        int i2 = jSONObject.getInt(CmcdData.STREAMING_FORMAT_HLS);
        this.a.getClass();
        String strA = q82.a("url", jSONObject);
        if (jSONObject.has("smartCenterSettings")) {
            s02 s02Var = this.b;
            JSONObject jSONObject2 = jSONObject.getJSONObject("smartCenterSettings");
            y45.i(jSONObject2, "getJSONObject(...)");
            r02VarA = s02Var.a(jSONObject2);
        } else {
            r02VarA = null;
        }
        String strOptString = jSONObject.optString("sizeType");
        y45.g(strOptString);
        if (strOptString.length() <= 0) {
            strOptString = null;
        }
        boolean zOptBoolean = jSONObject.optBoolean("preload", true);
        String strOptString2 = jSONObject.optString("preview");
        y45.g(strOptString2);
        return new xj0(i, i2, strA, strOptString, r02VarA, zOptBoolean, strOptString2.length() > 0 ? strOptString2 : null);
    }

    public pj0(q82 q82Var, s02 s02Var) {
        y45.j(q82Var, "urlJsonParser");
        y45.j(s02Var, "smartCenterSettingsParser");
        this.a = q82Var;
        this.b = s02Var;
    }
}
