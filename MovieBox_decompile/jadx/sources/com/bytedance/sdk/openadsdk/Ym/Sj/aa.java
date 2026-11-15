package com.bytedance.sdk.openadsdk.Ym.Sj;

import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import org.json.JSONObject;

public class aa extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private final Yf Sj;

    public aa(Yf yf2) {
        this.Sj = yf2;
    }

    public static void Sj(dNu dnu, Yf yf2) {
        dnu.Sj("commonConvert", new aa(yf2));
    }

    @Override
    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        this.Sj.vS(jSONObject);
        return null;
    }
}
