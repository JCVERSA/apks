package defpackage;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class xkb {
    public static final xkb a = new xkb();

    public static String c(xkb xkbVar, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "yyyy-MM-dd HH:mm:ss";
        }
        return xkbVar.b(str, str2);
    }

    public final String a(long j) {
        if (j <= 0) {
            return "0 B";
        }
        String[] strArr = {"B", "KB", "MB", "GB"};
        double d = j;
        int i = 0;
        while (d >= 1024.0d && i < 3) {
            d /= (double) 1024;
            i++;
        }
        hz9 hz9Var = hz9.a;
        String str = String.format("%.2f %s", Arrays.copyOf(new Object[]{Double.valueOf(d), strArr[i]}, 2));
        y45.i(str, "format(...)");
        return str;
    }

    public final String b(String str, String str2) {
        String str3;
        y45.j(str, "utcTime");
        y45.j(str2, "pattern");
        try {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.getDefault());
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str2, Locale.getDefault());
                simpleDateFormat2.setTimeZone(TimeZone.getDefault());
                Date date = simpleDateFormat.parse(str);
                if (date == null || (str3 = simpleDateFormat2.format(date)) == null) {
                    return "";
                }
            } catch (Exception unused) {
                SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
                simpleDateFormat3.setTimeZone(TimeZone.getTimeZone("UTC"));
                SimpleDateFormat simpleDateFormat4 = new SimpleDateFormat(str2, Locale.getDefault());
                simpleDateFormat4.setTimeZone(TimeZone.getDefault());
                Date date2 = simpleDateFormat3.parse(str);
                if (date2 == null || (str3 = simpleDateFormat4.format(date2)) == null) {
                    return "";
                }
            }
            return str3;
        } catch (Exception unused2) {
            return "";
        }
    }

    public final long d(String str) {
        y45.j(str, "utcTime");
        try {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.getDefault());
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                Date date = simpleDateFormat.parse(str);
                if (date != null) {
                    return date.getTime();
                }
                return 0L;
            } catch (Exception unused) {
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
                simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
                Date date2 = simpleDateFormat2.parse(str);
                if (date2 != null) {
                    return date2.getTime();
                }
                return 0L;
            }
        } catch (Exception unused2) {
            return 0L;
        }
        return 0L;
    }
}
