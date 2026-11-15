package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

public class Ym implements TKC {
    private final String Sj;
    private final long sP;

    public Ym(String str, long j10) {
        this.Sj = str;
        this.sP = j10;
    }

    @Override
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.Sj);
            jSONObject.put("preload_size", this.sP);
        } catch (Throwable th2) {
            sU.sP("LoadVideoStartModel", th2.getMessage());
        }
    }
}
