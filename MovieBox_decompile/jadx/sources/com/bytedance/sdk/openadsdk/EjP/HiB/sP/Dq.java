package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

public class Dq implements TKC {
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

    @Override
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_start_duration", this.Sj);
            jSONObject.put("video_cache_size", this.sP);
            jSONObject.put("is_auto_play", this.TKC);
        } catch (Throwable th2) {
            sU.sP("FeedPlayModel", th2.getMessage());
        }
    }
}
