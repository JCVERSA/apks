package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import a6.a;
import com.bytedance.sdk.component.utils.sU;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONObject;

public class sef implements TKC {
    private final int EjP;
    private final String HiB;
    private long Sj;
    private final int TKC;
    private long sP;

    public sef(a aVar) {
        this.TKC = aVar.a();
        this.EjP = aVar.d();
        this.HiB = aVar.c();
    }

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
            jSONObject.put("error_code", this.TKC);
            jSONObject.put("extra_error_code", this.EjP);
            jSONObject.put(TrackingKey.ERROR_MESSAGE, this.HiB);
        } catch (Throwable th2) {
            sU.sP("PlayErrorModel", th2.getMessage());
        }
    }
}
