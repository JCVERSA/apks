package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

public class HiB implements TKC {
    private long Sj;
    private long sP;

    public void Sj(long j10) {
        this.Sj = j10;
    }

    public void sP(long j10) {
        this.sP = j10;
    }

    @Override
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.Sj);
            jSONObject.put("total_duration", this.sP);
        } catch (Throwable th2) {
            sU.sP("FeedContinueModel", th2.getMessage());
        }
    }
}
