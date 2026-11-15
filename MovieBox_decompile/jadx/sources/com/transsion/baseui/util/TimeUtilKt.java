package com.transsion.baseui.util;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c0;
import com.transsion.baseui.R$plurals;
import com.transsion.baseui.R$string;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public abstract class TimeUtilKt {
    public static final String a(Integer num) {
        String str;
        String strValueOf;
        String strValueOf2;
        if (num == null) {
            return "00:00";
        }
        if (num.intValue() <= 0) {
            return "00:01";
        }
        int iIntValue = num.intValue() / 3600;
        int iIntValue2 = (num.intValue() / 60) % 60;
        int iIntValue3 = num.intValue() % 60;
        if (iIntValue > 0) {
            str = iIntValue + ":";
        } else {
            str = "";
        }
        if (iIntValue2 < 10) {
            strValueOf = "0" + iIntValue2;
        } else {
            strValueOf = String.valueOf(iIntValue2);
        }
        if (iIntValue3 < 10) {
            strValueOf2 = "0" + iIntValue3;
        } else {
            strValueOf2 = String.valueOf(iIntValue3);
        }
        return str + strValueOf + ":" + strValueOf2;
    }

    public static final t1 b(int i10, n0 scope, Function1 onTick, Function0 function0) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(onTick, "onTick");
        return kotlinx.coroutines.flow.c.u(kotlinx.coroutines.flow.c.w(kotlinx.coroutines.flow.c.x(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new TimeUtilKt$countdownByFlow$1(i10, null)), y0.c()), new TimeUtilKt$countdownByFlow$2(onTick, null)), new TimeUtilKt$countdownByFlow$3(function0, null)), scope);
    }

    public static final int c() {
        Calendar calendar = Calendar.getInstance();
        return (calendar.get(1) * 10000) + ((calendar.get(2) + 1) * 100) + calendar.get(5);
    }

    public static final int d(long j10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        return (calendar.get(1) * 10000) + ((calendar.get(2) + 1) * 100) + calendar.get(5);
    }

    public static final String e(long j10) {
        String strJ = c0.j(j10, c0.d("yyyy/MM/dd HH:mm:ss"));
        Intrinsics.g(strJ, "millis2String(...)");
        return strJ;
    }

    public static final String f(int i10) {
        int i11 = i10 / 3600;
        int i12 = (i10 % 3600) / 60;
        int i13 = i10 % 60;
        StringBuilder sb2 = new StringBuilder();
        if (i11 > 0) {
            sb2.append(i12);
            sb2.append(" h ");
        }
        if (i12 > 0) {
            sb2.append(i12);
            sb2.append(" min ");
        }
        if (i13 > 0) {
            sb2.append(i13);
            sb2.append(" sec");
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public static final String g(int i10) {
        int i11 = i10 / 3600;
        int i12 = (i10 % 3600) / 60;
        StringBuilder sb2 = new StringBuilder();
        if (i11 > 0) {
            sb2.append(i11);
            sb2.append("h");
        }
        if (i12 > 0) {
            sb2.append(i12);
            sb2.append("m");
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public static final String h(long j10) {
        long j11 = j10 / ((long) 1000);
        long j12 = 60;
        long j13 = j11 % j12;
        long j14 = (j11 / j12) % j12;
        long j15 = j11 / ((long) 3600);
        if (j15 > 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j15), Long.valueOf(j14), Long.valueOf(j13)}, 3));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
        String str2 = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j14), Long.valueOf(j13)}, 2));
        Intrinsics.g(str2, "format(...)");
        return str2;
    }

    private static final String i(long j10, Integer num) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        Application applicationA = Utils.a();
        if (jCurrentTimeMillis < TimeUnit.MINUTES.toMillis(1L)) {
            String string = applicationA.getString(R$string.time_just_now);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (jCurrentTimeMillis < TimeUnit.HOURS.toMillis(1L)) {
            int minutes = (int) TimeUnit.MILLISECONDS.toMinutes(jCurrentTimeMillis);
            String quantityString = applicationA.getResources().getQuantityString(R$plurals.time_minutes_ago, minutes, Integer.valueOf(minutes));
            Intrinsics.e(quantityString);
            return quantityString;
        }
        TimeUnit timeUnit = TimeUnit.DAYS;
        if (jCurrentTimeMillis < timeUnit.toMillis(1L)) {
            int hours = (int) TimeUnit.MILLISECONDS.toHours(jCurrentTimeMillis);
            String quantityString2 = applicationA.getResources().getQuantityString(R$plurals.time_hours_ago, hours, Integer.valueOf(hours));
            Intrinsics.e(quantityString2);
            return quantityString2;
        }
        if (jCurrentTimeMillis < timeUnit.toMillis(7L)) {
            int days = (int) TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis);
            String quantityString3 = applicationA.getResources().getQuantityString(R$plurals.time_days_ago, days, Integer.valueOf(days));
            Intrinsics.e(quantityString3);
            return quantityString3;
        }
        if (jCurrentTimeMillis < timeUnit.toMillis(30L)) {
            int days2 = (int) (TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis) / ((long) 7));
            String quantityString4 = applicationA.getResources().getQuantityString(R$plurals.time_weeks_ago, days2, Integer.valueOf(days2));
            Intrinsics.e(quantityString4);
            return quantityString4;
        }
        int days3 = (int) (TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis) / ((long) 30));
        if (num != null) {
            days3 = RangesKt.h(days3, num.intValue());
        }
        String quantityString5 = applicationA.getResources().getQuantityString(R$plurals.time_months_ago, days3, Integer.valueOf(days3));
        Intrinsics.e(quantityString5);
        return quantityString5;
    }

    public static final String j(long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        Application applicationA = Utils.a();
        if (jCurrentTimeMillis < TimeUnit.MINUTES.toMillis(1L)) {
            String string = applicationA.getString(R$string.time_just_now);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (jCurrentTimeMillis < TimeUnit.HOURS.toMillis(1L)) {
            int minutes = (int) TimeUnit.MILLISECONDS.toMinutes(jCurrentTimeMillis);
            String quantityString = applicationA.getResources().getQuantityString(R$plurals.time_minutes_ago, minutes, Integer.valueOf(minutes));
            Intrinsics.e(quantityString);
            return quantityString;
        }
        TimeUnit timeUnit = TimeUnit.DAYS;
        if (jCurrentTimeMillis < timeUnit.toMillis(1L)) {
            int hours = (int) TimeUnit.MILLISECONDS.toHours(jCurrentTimeMillis);
            String quantityString2 = applicationA.getResources().getQuantityString(R$plurals.time_hours_ago, hours, Integer.valueOf(hours));
            Intrinsics.e(quantityString2);
            return quantityString2;
        }
        if (jCurrentTimeMillis < timeUnit.toMillis(7L)) {
            int days = (int) TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis);
            String quantityString3 = applicationA.getResources().getQuantityString(R$plurals.time_days_ago, days, Integer.valueOf(days));
            Intrinsics.e(quantityString3);
            return quantityString3;
        }
        if (jCurrentTimeMillis < timeUnit.toMillis(30L)) {
            int days2 = (int) (TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis) / ((long) 7));
            String quantityString4 = applicationA.getResources().getQuantityString(R$plurals.time_weeks_ago, days2, Integer.valueOf(days2));
            Intrinsics.e(quantityString4);
            return quantityString4;
        }
        if (jCurrentTimeMillis < timeUnit.toMillis(365L)) {
            int days3 = (int) (TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis) / ((long) 30));
            String quantityString5 = applicationA.getResources().getQuantityString(R$plurals.time_months_ago, days3, Integer.valueOf(days3));
            Intrinsics.e(quantityString5);
            return quantityString5;
        }
        int days4 = (int) (TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis) / ((long) 365));
        String quantityString6 = applicationA.getResources().getQuantityString(R$plurals.time_years_ago, days4, Integer.valueOf(days4));
        Intrinsics.e(quantityString6);
        return quantityString6;
    }

    public static final String k(long j10) {
        return i(j10, 6);
    }

    public static final String l(long j10) {
        int i10 = Calendar.getInstance().get(1);
        String strJ = c0.j(j10, c0.d("yyyy-MM-dd HH:mm:ss"));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(c0.k(strJ));
        if (i10 == calendar.get(1)) {
            String strJ2 = c0.j(j10, c0.d("MM-dd"));
            Intrinsics.e(strJ2);
            return strJ2;
        }
        String strJ3 = c0.j(j10, c0.d("yyyy-MM-dd"));
        Intrinsics.e(strJ3);
        return strJ3;
    }

    public static final String m(String str) {
        long j10;
        if (str != null) {
            try {
                j10 = Long.parseLong(str);
            } catch (Exception unused) {
                return "0";
            }
        } else {
            j10 = 0;
        }
        return l(j10);
    }

    public static final String n(long j10) {
        String strJ = c0.j(j10, c0.d("yyyy-MM-dd"));
        Intrinsics.g(strJ, "millis2String(...)");
        return strJ;
    }

    public static final String o(long j10) {
        if (j10 == 0) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = j10 >= 3600000 ? new SimpleDateFormat("HH:mm:ss") : new SimpleDateFormat("mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        String str = simpleDateFormat.format(Long.valueOf(j10));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public static final String p(long j10) {
        StringBuilder sb2 = new StringBuilder();
        if (j10 > 3600) {
            long j11 = 3600;
            long j12 = j10 / j11;
            j10 -= j11 * j12;
            if (j12 < 10) {
                sb2.append("0");
            }
            sb2.append(j12);
            sb2.append(":");
        }
        if (j10 > 60) {
            long j13 = 60;
            long j14 = j10 / j13;
            j10 -= j13 * j14;
            if (j14 < 10) {
                sb2.append("0");
            }
            sb2.append(j14);
            sb2.append(":");
        } else {
            sb2.append("00:");
        }
        if (j10 <= 0) {
            sb2.append("00");
        } else if (j10 > 60) {
            sb2.append("59");
        } else if (j10 < 10) {
            sb2.append("0" + j10);
        } else {
            sb2.append(j10);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public static final int q(long j10) {
        long jCurrentTimeMillis = j10 - System.currentTimeMillis();
        if (jCurrentTimeMillis < 0) {
            return -1;
        }
        return (int) TimeUnit.MILLISECONDS.toDays(jCurrentTimeMillis);
    }

    public static final String r(long j10) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long hours = timeUnit.toHours(j10);
        long j11 = 60;
        long minutes = timeUnit.toMinutes(j10) % j11;
        long j12 = j10 % j11;
        if (hours > 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format(Locale.ROOT, "%d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(j12)}, 3));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
        String str2 = String.format(Locale.ROOT, "%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(minutes), Long.valueOf(j12)}, 2));
        Intrinsics.g(str2, "format(...)");
        return str2;
    }
}
