package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONObject;

public class TEQ implements TKC {
    private int EjP;
    private String HiB;
    private String Sj;
    private long TKC;
    private long sP;
    private String vS;

    public void Sj(String str) {
        this.Sj = str;
    }

    public void TKC(String str) {
        this.vS = str;
    }

    public void sP(long j10) {
        this.TKC = j10;
    }

    public void Sj(long j10) {
        this.sP = j10;
    }

    public void sP(String str) {
        this.HiB = str;
    }

    public void Sj(int i10) {
        this.EjP = i10;
    }

    @Override
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.Sj);
            jSONObject.put("preload_size", this.sP);
            jSONObject.put("load_time", this.TKC);
            jSONObject.put("error_code", this.EjP);
            jSONObject.put(TrackingKey.ERROR_MESSAGE, this.HiB);
            jSONObject.put("error_message_server", this.vS);
        } catch (Throwable th2) {
            sU.sP("LoadVideoErrorModel", th2.getMessage());
        }
    }
}
