package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.ad.TrackingManager;
import java.util.Map;

public class LqL {
    public static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, Double d10) {
        if (sUVar == null || sUVar.QZ() == null) {
            return;
        }
        Map<String, Object> mapQZ = sUVar.QZ();
        try {
            Object obj = sUVar.QZ().get(TTAdConstant.SDK_BIDDING_TYPE);
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String strReplace = (String) mapQZ.get("nurl");
                if (TextUtils.isEmpty(strReplace)) {
                    return;
                }
                if (d10 != null) {
                    strReplace = strReplace.replace("${AUCTION_BID_TO_WIN}", String.valueOf(d10));
                }
                com.bytedance.sdk.openadsdk.core.dNu.TKC().Sj(strReplace);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.utils.sU.sP("report Win error", new Object[0]);
        }
    }

    public static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, Double d10, String str, String str2) {
        if (sUVar == null || sUVar.QZ() == null) {
            return;
        }
        Map<String, Object> mapQZ = sUVar.QZ();
        try {
            Object obj = sUVar.QZ().get(TTAdConstant.SDK_BIDDING_TYPE);
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String strReplace = (String) mapQZ.get("lurl");
                if (TextUtils.isEmpty(strReplace)) {
                    return;
                }
                if (d10 != null) {
                    strReplace = strReplace.replace(TrackingManager.AUCTION_PRICE, String.valueOf(d10));
                }
                if (str != null) {
                    strReplace = strReplace.replace("${AUCTION_LOSS}", str);
                }
                if (str2 != null) {
                    strReplace = strReplace.replace("${AUCTION_WINNER}", str2);
                }
                com.bytedance.sdk.openadsdk.core.dNu.TKC().Sj(strReplace);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.utils.sU.sP("report Loss error", new Object[0]);
        }
    }
}
