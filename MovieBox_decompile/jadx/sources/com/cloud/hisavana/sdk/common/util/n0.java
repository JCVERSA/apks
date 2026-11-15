package com.cloud.hisavana.sdk.common.util;

import com.cloud.hisavana.sdk.b4;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;

public final class n0 {

    public static final n0 f21576a = new n0();

    private n0() {
    }

    public static final double a(Double d10) {
        if (d10 == null) {
            return 0.0d;
        }
        try {
            return m0.a(BigDecimal.valueOf(d10.doubleValue()).divide(new BigDecimal(100))).doubleValue();
        } catch (Exception e10) {
            b4.b().w("UnitUtil", "cents convert to dollar fail, reason is " + e10.getMessage());
            return 0.0d;
        }
    }

    public static final double b(Double d10) {
        if (d10 == null) {
            return 0.0d;
        }
        try {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(d10.doubleValue());
            Intrinsics.g(bigDecimalValueOf, "valueOf(...)");
            return m0.a(bigDecimalValueOf.multiply(BigDecimal.valueOf(100L))).doubleValue();
        } catch (Exception e10) {
            b4.b().w("UnitUtil", "dollar convert to cents fail, reason is " + e10.getMessage());
            return 0.0d;
        }
    }
}
