package defpackage;

import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public abstract class it1 {
    public static int a(String str, String str2, String str3) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str3);
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(simpleDateFormat.parse(str));
            long timeInMillis = calendar.getTimeInMillis();
            calendar.setTime(simpleDateFormat.parse(str2));
            return Integer.parseInt(String.valueOf((calendar.getTimeInMillis() - timeInMillis) / 86400000));
        } catch (ParseException unused) {
            return -1;
        }
    }

    public static String b(long j, String str) {
        return new SimpleDateFormat(str).format(new Date(j));
    }

    public static String c(String str) {
        return new SimpleDateFormat(str).format(new Date());
    }

    public static String d() {
        return new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D).format(new Date());
    }

    public static boolean e(long j) {
        return System.currentTimeMillis() - j < 604800000;
    }
}
