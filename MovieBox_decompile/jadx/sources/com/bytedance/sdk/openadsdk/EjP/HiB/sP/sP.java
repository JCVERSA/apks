package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

public class sP implements TKC {
    private int EjP;
    private long Sj;
    private int TKC;
    private long sP;

    public void Sj(long j10) {
        this.Sj = j10;
    }

    public void sP(long j10) {
        this.sP = j10;
    }

    public void Sj(int i10) {
        this.TKC = i10;
    }

    public void sP(int i10) {
        this.EjP = i10;
    }

    @Override
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.Sj);
            jSONObject.put("total_duration", this.sP);
            jSONObject.put("vbtt_skip_type", this.TKC);
            jSONObject.put("skip_reason", this.EjP);
        } catch (Throwable th2) {
            sU.sP("EndcardSkipModel", th2.getMessage());
        }
    }
}
