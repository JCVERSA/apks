package com.bytedance.sdk.component.Dq.sP;

import org.json.JSONObject;

public class Sj {
    public int EjP;
    public int Sj;
    public int TKC;
    public int sP;

    public Sj(int i10, int i11, int i12, int i13) {
        this.Sj = i10;
        this.sP = i11;
        this.TKC = i12;
        this.EjP = i13;
    }

    public JSONObject Sj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_thread_num", this.Sj);
            jSONObject.put("sdk_max_thread_num", this.sP);
            jSONObject.put("app_thread_num", this.TKC);
            jSONObject.put("app_max_thread_num", this.EjP);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
