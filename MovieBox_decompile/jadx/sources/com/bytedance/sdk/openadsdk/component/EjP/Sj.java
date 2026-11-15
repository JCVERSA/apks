package com.bytedance.sdk.openadsdk.component.EjP;

import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.Zq.TKC;
import com.bytedance.sdk.openadsdk.Zq.sP;
import com.bytedance.sdk.openadsdk.core.model.ley;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import com.transsion.push.PushConstants;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj {
    public static void Sj(final int i10, final int i11) {
        TKC.Sj("openad_load_ad_timeout", false, new sP() {
            @Override
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout_type", i10);
                jSONObject.put("user_timeout_time", i11);
                return EjP.sP().Sj("openad_load_ad_timeout").sP(jSONObject.toString());
            }
        });
    }

    public static void sP(sU sUVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportCacheLoss json error", e10);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.EjP(sUVar, "cache_loss", jSONObject);
    }

    public static void Sj(sU sUVar, int i10, int i11, float f10) {
        JSONObject jSONObject = new JSONObject();
        try {
            Sj(jSONObject, sUVar);
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("skip_time", i10);
            jSONObject.put("skip_show_time", i11);
            jSONObject.put("total_time", f10);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportSkip json error", e10);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "skip", i10, jSONObject);
    }

    public static void sP(sU sUVar, long j10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("size", sUVar.UHs().g());
            jSONObject.put("video_duration", sUVar.UHs().K());
            jSONObject.put("order", z10 ? 1 : 2);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "download_video_duration", j10, jSONObject);
    }

    public static void Sj(sU sUVar, long j10, float f10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            Sj(jSONObject, sUVar);
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
            if (z10) {
                double d10 = f10;
                jSONObject.put("video_duration", d10);
                jSONObject.put("video_percent", (int) (((j10 * 1.0d) / 10.0d) / d10));
            } else {
                jSONObject.put("image_duration", f10);
            }
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportDestroy json error", e10);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.EjP(sUVar, PushConstants.PROVIDER_FIELD_DESTROY, jSONObject);
    }

    public static void Sj(sU sUVar) {
        com.bytedance.sdk.openadsdk.EjP.TKC.EjP(sUVar, "cache_expire", (JSONObject) null);
    }

    public static void Sj(sU sUVar, long j10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("order", z10 ? 1 : 2);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "download_image_duration", j10, jSONObject);
    }

    public static void Sj(sU sUVar, int i10, ley leyVar) {
        JSONObject jSONObject = new JSONObject();
        long jVS = 0;
        try {
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("open_ad_cache_type", i10);
            if (leyVar != null) {
                leyVar.sP(WMZ.sP());
                Sj(jSONObject, sUVar);
                jSONObject.put("client_start_time", leyVar.sP());
                jSONObject.put("sever_time", leyVar.EjP());
                jSONObject.put("network_time", leyVar.TKC());
                jSONObject.put("client_end_time", leyVar.HiB());
                jSONObject.put("download_resource_duration", leyVar.Jcg());
                jSONObject.put("resource_source", leyVar.Dq());
                jSONObject.put("is_bidding", leyVar.Sj ? 1 : 0);
                if (leyVar.Sj) {
                    jSONObject.put("load_wait_time", leyVar.sP);
                }
                jVS = leyVar.vS();
            }
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportLoadNetDuration json error", e10);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "load_net_duration", jVS, jSONObject);
    }

    public static void Sj(sU sUVar, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            Sj(jSONObject, sUVar);
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException unused) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdReport", "reportLoadCacheDuration json error");
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "load_cache_duration", j10, jSONObject);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    private static void Sj(JSONObject jSONObject, sU sUVar) {
        int i10;
        if (sUVar != null) {
            try {
                if (sUVar.yfI()) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdReport", e10.getMessage());
                return;
            }
        } else {
            i10 = 0;
        }
        jSONObject.put("is_icon_only", i10);
    }
}
