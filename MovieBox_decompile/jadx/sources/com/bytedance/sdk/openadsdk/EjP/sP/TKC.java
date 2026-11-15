package com.bytedance.sdk.openadsdk.EjP.sP;

import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONException;
import org.json.JSONObject;

public class TKC implements sP {
    sP Sj;

    @Override
    public void Sj(JSONObject jSONObject, long j10) throws JSONException {
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.Sj(jSONObject, j10);
        }
        if (j10 <= 0) {
            j10 = System.currentTimeMillis();
        }
        jSONObject.put(TrackingKey.EVENT_TS, j10);
    }
}
