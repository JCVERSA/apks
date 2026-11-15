package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

public class EjP implements TKC {
    public int EjP = 0;
    public long Sj;
    public int TKC;
    public long sP;

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
            jSONObject.put("total_duration", this.Sj);
            jSONObject.put("buffers_time", this.sP);
            jSONObject.put("break_reason", this.TKC);
            jSONObject.put("video_backup", this.EjP);
        } catch (Throwable th2) {
            sU.sP("FeedBreakModel", th2.getMessage());
        }
    }
}
