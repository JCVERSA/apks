package com.transsion.baseui.util;

import android.content.Context;
import com.transsion.baseui.R$plurals;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class j {
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
            return bigDecimalDivide + "K";
        }
        BigDecimal bigDecimalDivide2 = new BigDecimal(j10).divide(new BigDecimal(1000000), 1, 4);
        Intrinsics.g(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2 + "M";
    }

    public static final String b(Integer num) {
        if (num == null) {
            return "";
        }
        return (num.intValue() / 3600) + "h " + ((num.intValue() % 3600) / 60) + "m";
    }

    public static final String c(String str, Context context) {
        Long lX;
        Intrinsics.h(context, "context");
        long jLongValue = (str == null || (lX = StringsKt.x(str)) == null) ? 0L : lX.longValue();
        String quantityString = context.getResources().getQuantityString(R$plurals.str_views, (int) jLongValue, a(jLongValue));
        Intrinsics.g(quantityString, "getQuantityString(...)");
        return quantityString;
    }
}
