package com.mbridge.msdk.video.dynview.request;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.Campaign;
import org.json.JSONObject;

public class a {

    private static final String f38234a = "com.mbridge.msdk.video.dynview.request.a";

    class C0534a implements j {

        final ViewGroup f38235a;

        C0534a(ViewGroup viewGroup) {
            this.f38235a = viewGroup;
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, this.f38235a);
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, this.f38235a);
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.b(campaign, this.f38235a);
        }
    }

    public static void a(CampaignEx campaignEx, Context context, String str, String str2, String str3) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000091");
                jSONObject.put("network_type", k0.s(context));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f34503g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f34503g);
                }
                jSONObject.put(CampaignEx.JSON_KEY_HB, 0);
                jSONObject.put("rid_n", str3);
                jSONObject.put("reason", str);
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                    jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, t0.b(campaignEx.getRewardTemplateMode().e()));
                }
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b(f38234a, th2.getMessage());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0099  */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    public static void a(CampaignUnit campaignUnit, int i10, int i11, String str) {
        int i12;
        String impressionURL;
        int i13;
        String str2;
        if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0 || campaignUnit.getAds().get(i10) == null) {
            return;
        }
        if (i11 == 0 && campaignUnit.getAds().get(i10).mMoreOfferImpShow) {
            return;
        }
        String strA = z0.a(campaignUnit.getAds().get(i10).getendcard_url(), "mof_testuid");
        if (TextUtils.isEmpty(strA)) {
            strA = z0.a(campaignUnit.getAds().get(i10).getendcard_url(), "mof_uid");
        }
        String str3 = TextUtils.isEmpty(strA) ? str : strA;
        if (i11 == 0) {
            i12 = com.mbridge.msdk.click.retry.a.f33586m;
            impressionURL = campaignUnit.getAds().get(i10).getImpressionURL();
        } else {
            if (i11 != 1) {
                str2 = "";
                i13 = 0;
            } else {
                i12 = com.mbridge.msdk.click.retry.a.f33587n;
                impressionURL = campaignUnit.getAds().get(i10).getOnlyImpressionURL();
            }
            if (TextUtils.isEmpty(str2)) {
            }
            com.mbridge.msdk.click.a.a(c.m().d(), campaignUnit.getAds().get(i10), str3, str2, false, true, i13);
        }
        i13 = i12;
        str2 = impressionURL;
        if (TextUtils.isEmpty(str2)) {
            com.mbridge.msdk.click.a.a(c.m().d(), campaignUnit.getAds().get(i10), str3, str2, false, true, i13);
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, View view) {
        if (context == null || campaignEx == null) {
            return;
        }
        a(context, campaignEx);
        com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(context, str);
        if (view instanceof ViewGroup) {
            aVar.a(new C0534a((ViewGroup) view));
        }
        aVar.a(campaignEx);
    }

    private static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }
}
