package com.transsion.postdetail.util;

import com.blankj.utilcode.util.c0;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;

public abstract class m {
    public static final String a(long j10) {
        int i10 = Calendar.getInstance().get(1);
        String strJ = c0.j(j10, c0.d("yyyy-MM-dd HH:mm:ss"));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(c0.k(strJ));
        if (i10 == calendar.get(1)) {
            String strJ2 = c0.j(j10, c0.d("MM-dd HH:mm"));
            Intrinsics.e(strJ2);
            return strJ2;
        }
        String strJ3 = c0.j(j10, c0.d("yyyy-MM-dd HH:mm"));
        Intrinsics.e(strJ3);
        return strJ3;
    }

    public static final String b(long j10) {
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
        if (z10 && z11) {
            String str = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date(j10));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (!z10 || z11) {
            String str2 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(j10));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        String str3 = new SimpleDateFormat("dd/MM", Locale.getDefault()).format(new Date(j10));
        Intrinsics.g(str3, "format(...)");
        return str3;
    }

    public static final String c(int i10) {
        Object objValueOf;
        Object objValueOf2;
        int i11 = i10 / 1000;
        int i12 = i11 % 60;
        int i13 = (i11 / 60) % 60;
        int i14 = i11 / 3600;
        if (i14 <= 0) {
            Object objValueOf3 = i13 > 0 ? Integer.valueOf(i13) : "0";
            if (i12 < 10) {
                objValueOf = "0" + i12;
            } else {
                objValueOf = Integer.valueOf(i12);
            }
            return objValueOf3 + ":" + objValueOf;
        }
        if (i12 < 10) {
            objValueOf2 = "0" + i12;
        } else {
            objValueOf2 = Integer.valueOf(i12);
        }
        return i14 + ":" + i13 + ":" + objValueOf2;
    }

    public static final String d(long j10) {
        SimpleDateFormat simpleDateFormat = j10 >= 3600000 ? new SimpleDateFormat("H:mm:ss") : new SimpleDateFormat("mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        String str = simpleDateFormat.format(Long.valueOf(j10));
        Intrinsics.g(str, "format(...)");
        return str;
    }
}
