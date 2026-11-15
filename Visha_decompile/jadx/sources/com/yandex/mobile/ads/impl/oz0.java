package com.yandex.mobile.ads.impl;

import com.monetization.ads.mediation.banner.MediatedBannerSize;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.y45;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class oz0 {
    public static JSONObject a(lz0 lz0Var, String str, MediatedBannerSize mediatedBannerSize) {
        y45.j(lz0Var, "mediationNetwork");
        y45.j(str, "bidderToken");
        String strE = lz0Var.e();
        Map<String, String> mapF = lz0Var.f();
        Map<String, String> mapI = lz0Var.i();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adapter", strE);
            if (mapF != null) {
                jSONObject.put("bidding_info", new JSONObject(mapF));
            }
            jSONObject.put("network_data", new JSONObject(mapI));
            jSONObject.put("bidder_token", str);
            if (mediatedBannerSize == null) {
                return jSONObject;
            }
            jSONObject.put(PlayAudioData.TAG_SIZE, new JSONObject(mediatedBannerSize.toSizeData()));
            return jSONObject;
        } catch (JSONException unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }
}
