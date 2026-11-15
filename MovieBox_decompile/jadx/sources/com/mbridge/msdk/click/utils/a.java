package com.mbridge.msdk.click.utils;

import android.content.Context;
import android.webkit.URLUtil;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import org.json.JSONObject;

public class a {

    public static int f33612a = 1;

    public static int f33613b = 2;

    public static int f33614c = 1500;

    public static boolean a(CampaignEx campaignEx, String str, int i10) {
        boolean z10 = false;
        if (campaignEx != null && campaignEx.getTpOffer() == 1) {
            z10 = campaignEx.getFac() != 0;
            b(campaignEx, str, i10);
        }
        return z10;
    }

    private static void b(CampaignEx campaignEx, String str, int i10) {
        try {
            Context contextD = c.m().d();
            if (contextD == null || campaignEx == null) {
                return;
            }
            if (URLUtil.isFileUrl(str)) {
                File file = new File(str.replace("file:////", "").replace("file:///", "").replace(AdPayload.FILE_SCHEME, ""));
                if (file.exists()) {
                    str = m0.e(file);
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000109");
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
            jSONObject.put("html", str);
            jSONObject.put("network_type", k0.s(contextD));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, campaignEx.getCampaignUnitId());
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            if (campaignEx.isBidCampaign()) {
                jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
            }
            d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b("DspFilterUtils", th2.getMessage());
        }
    }
}
