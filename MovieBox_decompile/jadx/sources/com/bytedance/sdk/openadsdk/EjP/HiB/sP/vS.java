package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

public class vS implements TKC {
    private long Sj;
    private int TKC = 0;
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

    @Override
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.Sj);
            jSONObject.put("buffers_time", this.sP);
            jSONObject.put("video_backup", this.TKC);
        } catch (Throwable th2) {
            sU.sP("FeedOverModel", th2.getMessage());
        }
    }
}
