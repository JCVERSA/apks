package h1;

import android.content.Context;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public final class c {

    public static class a extends Exception {
    }

    public static String a(Context context, String str, String str2) throws a, ParseException {
        if (!str2.startsWith("DP")) {
            return null;
        }
        i.a aVar = new i.a(context);
        String strA = aVar.a(str2.substring(2), i.a.c(str));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH);
        String strSubstring = strA.substring(0, 12);
        Date date = simpleDateFormat.parse(strSubstring);
        Calendar calendar = Calendar.getInstance();
        calendar.add(10, -3);
        if (calendar.getTime().after(date)) {
            throw new a();
        }
        return aVar.a(strA.substring(12), i.a.c(strSubstring));
    }

    public static int b(String str) {
        if ("r".equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }
}
