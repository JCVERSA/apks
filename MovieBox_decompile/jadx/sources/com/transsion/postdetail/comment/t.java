package com.transsion.postdetail.comment;

import android.content.Context;
import com.transsion.postdetail.R$string;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class t {

    public static final t f46778a = new t();

    private t() {
    }

    private final String b(Context context, long j10) {
        if (j10 == 0) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        int i10 = calendar.get(1);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j10);
        boolean z10 = calendar2.get(1) == i10;
        boolean z11 = calendar2.get(6) == Calendar.getInstance().get(6);
        if (!z10 || z11) {
            String str = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(j10));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        String str2 = new SimpleDateFormat("dd/MM", Locale.getDefault()).format(new Date(j10));
        Intrinsics.g(str2, "format(...)");
        return str2;
    }

    public final String a(int i10) {
        if (i10 < 1000) {
            return String.valueOf(i10);
        }
        if (i10 < 1000000) {
            BigDecimal bigDecimalDivide = new BigDecimal(i10).divide(new BigDecimal(1000), 1, 4);
            Intrinsics.g(bigDecimalDivide, "divide(...)");
            return bigDecimalDivide + " k";
        }
        BigDecimal bigDecimalDivide2 = new BigDecimal(i10).divide(new BigDecimal(1000000), 1, 4);
        Intrinsics.g(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2 + " m";
    }

    public final String c(Context context, long j10) {
        Intrinsics.h(context, "context");
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        if (jCurrentTimeMillis < -30000) {
            return b(context, j10);
        }
        if (-30000 <= jCurrentTimeMillis && jCurrentTimeMillis < 10000) {
            String string = context.getString(R$string.comment_just_now);
            Intrinsics.e(string);
            return string;
        }
        if (10000 <= jCurrentTimeMillis && jCurrentTimeMillis < 60000) {
            return ((int) (jCurrentTimeMillis / 1000)) + "s";
        }
        if (60000 <= jCurrentTimeMillis && jCurrentTimeMillis < 3600000) {
            return ((int) (jCurrentTimeMillis / 60000)) + "min";
        }
        if (3600000 > jCurrentTimeMillis || jCurrentTimeMillis >= 86400000) {
            return b(context, j10);
        }
        return ((int) (jCurrentTimeMillis / 3600000)) + "h";
    }
}
