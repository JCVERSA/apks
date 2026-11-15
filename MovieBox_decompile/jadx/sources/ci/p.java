package ci;

import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class p {

    public static final p f16947a = new p();

    private p() {
    }

    public static String b(p pVar, Long l10, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "yyyy-MM-dd";
        }
        return pVar.a(l10, str);
    }

    public final String a(Long l10, String dateFormat) {
        Intrinsics.h(dateFormat, "dateFormat");
        String str = new SimpleDateFormat(dateFormat, Locale.getDefault()).format(new Date(l10 != null ? l10.longValue() : 0L));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final String c() {
        String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(Calendar.getInstance().getTime());
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final long d() {
        return new Date().getTime();
    }

    public final String e(long j10, long j11) {
        long jAbs = Math.abs(j11 - j10);
        long j12 = 60;
        return (jAbs / ((long) TimeConstants.DAY)) + "天 " + ((jAbs / ((long) TimeConstants.HOUR)) % ((long) 24)) + "小时 " + ((jAbs / ((long) 60000)) % j12) + "分钟 " + ((jAbs / ((long) 1000)) % j12) + "秒";
    }
}
