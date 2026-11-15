package com.transsion.baseui.util;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.math.BigDecimal;
import java.math.RoundingMode;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class h {

    public static final a f42343a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String b(String str) {
            long j10 = Long.parseLong(str);
            if (j10 < 0) {
                return "-";
            }
            if (j10 < 1000) {
                return str.toString();
            }
            if (1000 <= j10 && j10 < 1000001) {
                return new BigDecimal(str).divide(new BigDecimal("1000")).setScale(1, RoundingMode.HALF_UP) + CampaignEx.JSON_KEY_AD_K;
            }
            if (j10 < 1000000) {
                return str.toString();
            }
            return new BigDecimal(str).divide(new BigDecimal("1000000")).setScale(1, RoundingMode.HALF_UP) + "m";
        }

        public final String a(String str) {
            if (str == null) {
                return "0";
            }
            try {
                return b(str);
            } catch (Exception e10) {
                e10.printStackTrace();
                return str;
            }
        }

        private a() {
        }
    }
}
