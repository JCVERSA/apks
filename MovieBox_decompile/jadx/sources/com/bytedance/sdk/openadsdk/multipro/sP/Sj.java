package com.bytedance.sdk.openadsdk.multipro.sP;

import org.json.JSONObject;

public class Sj {
    public boolean EjP;
    public long HiB;
    public long Jcg;
    public boolean Sj;
    public boolean TKC;
    public boolean sP;
    public long vS;

    public interface InterfaceC0265Sj {
        Sj vS();
    }

    public Sj EjP(boolean z10) {
        this.TKC = z10;
        return this;
    }

    public Sj Sj(boolean z10) {
        this.EjP = z10;
        return this;
    }

    public Sj TKC(boolean z10) {
        this.sP = z10;
        return this;
    }

    public Sj sP(boolean z10) {
        this.Sj = z10;
        return this;
    }

    public Sj Sj(long j10) {
        this.HiB = j10;
        return this;
    }

    public Sj TKC(long j10) {
        this.Jcg = j10;
        return this;
    }

    public Sj sP(long j10) {
        this.vS = j10;
        return this;
    }

    public JSONObject Sj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.Sj);
            jSONObject.put("isFromVideoDetailPage", this.sP);
            jSONObject.put("isFromDetailPage", this.TKC);
            jSONObject.put("duration", this.HiB);
            jSONObject.put("totalPlayDuration", this.vS);
            jSONObject.put("currentPlayPosition", this.Jcg);
            jSONObject.put("isAutoPlay", this.EjP);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static Sj Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Sj sj2 = new Sj();
        sj2.sP(jSONObject.optBoolean("isCompleted"));
        sj2.TKC(jSONObject.optBoolean("isFromVideoDetailPage"));
        sj2.EjP(jSONObject.optBoolean("isFromDetailPage"));
        sj2.Sj(jSONObject.optLong("duration"));
        sj2.sP(jSONObject.optLong("totalPlayDuration"));
        sj2.TKC(jSONObject.optLong("currentPlayPosition"));
        sj2.Sj(jSONObject.optBoolean("isAutoPlay"));
        return sj2;
    }
}
