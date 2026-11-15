package com.bytedance.sdk.openadsdk.core.aa.TKC;

import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import org.json.JSONException;
import org.json.JSONObject;

public class sP {
    public static void Sj(sU sUVar) {
        if (uP.sP(sUVar)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, "playable_preload", "preload_start", (JSONObject) null);
        }
    }

    public static void Sj(sU sUVar, long j10, long j11) {
        if (sUVar != null) {
            if (uP.TKC(sUVar) || uP.sP(sUVar)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("loadzip_success_time", j10);
                    jSONObject.put("unzip_success_time", j11);
                } catch (JSONException e10) {
                    com.bytedance.sdk.component.utils.sU.Sj("PlayableEvent", "onSuccess json error", e10);
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, "playable_preload", "preload_success", jSONObject);
            }
        }
    }

    public static void Sj(sU sUVar, int i10, String str) {
        if (sUVar != null) {
            if (uP.TKC(sUVar) || uP.sP(sUVar)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i10);
                    jSONObject.put("error_reason", str);
                } catch (JSONException e10) {
                    com.bytedance.sdk.component.utils.sU.Sj("PlayableEvent", "onFail json error", e10);
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, "playable_preload", "preload_fail", jSONObject);
            }
        }
    }
}
