package com.cloud.hisavana.sdk.common.util;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.text.NumberFormat;
import java.util.Locale;

public class c0 {
    public static String a(double d10) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        numberInstance.setMinimumFractionDigits(1);
        numberInstance.setMaximumFractionDigits(1);
        return numberInstance.format(d10);
    }

    public static String b(long j10) {
        if (j10 < 1000) {
            return a(j10);
        }
        if (j10 < 1000000) {
            return a(j10 / 1000.0f) + CampaignEx.JSON_KEY_AD_K;
        }
        if (j10 < C.NANOS_PER_SECOND) {
            return a(j10 / 1000000.0f) + "million";
        }
        return a(j10 / 1.0E9f) + "billion";
    }
}
