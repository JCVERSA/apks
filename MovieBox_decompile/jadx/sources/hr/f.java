package hr;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;

public abstract class f {
    public static final String a(long j10) {
        if (j10 < 0) {
            wf.a.C0922a.f(wf.a.f74274a, "error", "formatNumber count< 0", false, 4, null);
            return "0";
        }
        if (j10 < 1000) {
            return String.valueOf(j10);
        }
        if (j10 < 1000000) {
            BigDecimal bigDecimalDivide = new BigDecimal(j10).divide(new BigDecimal(1000), 1, 4);
            Intrinsics.g(bigDecimalDivide, "divide(...)");
            return bigDecimalDivide + " k";
        }
        BigDecimal bigDecimalDivide2 = new BigDecimal(j10).divide(new BigDecimal(1000000), 1, 4);
        Intrinsics.g(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2 + " m";
    }
}
