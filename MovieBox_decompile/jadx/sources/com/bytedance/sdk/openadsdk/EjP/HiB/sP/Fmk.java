package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

public class Fmk implements TKC {
    public long Sj;
    public long TKC;
    public int sP;

    public void Sj(long j10) {
        this.Sj = j10;
    }

    public void sP(long j10) {
        this.TKC = j10;
    }

    public void Sj(int i10) {
        this.sP = i10;
    }

    @Override
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.Sj);
            jSONObject.put("buffers_count", this.sP);
            jSONObject.put("total_duration", this.TKC);
        } catch (Throwable th2) {
            sU.sP("PlayBufferModel", th2.getMessage());
        }
    }
}
