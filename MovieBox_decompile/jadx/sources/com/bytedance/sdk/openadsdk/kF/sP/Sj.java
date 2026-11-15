package com.bytedance.sdk.openadsdk.kF.sP;

import org.json.JSONObject;

public class Sj {
    private final int Sj;
    private final float TKC;
    private final int sP;

    public Sj(int i10, int i11, float f10) {
        this.Sj = i10;
        this.sP = i11;
        this.TKC = f10;
    }

    public static JSONObject Sj(Sj sj2) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", sj2.Sj);
        jSONObject.put("height", sj2.sP);
        jSONObject.put("alpha", sj2.TKC);
        return jSONObject;
    }
}
