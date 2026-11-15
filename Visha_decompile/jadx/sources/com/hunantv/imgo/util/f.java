package com.hunantv.imgo.util;

import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class f {
    public static final SimpleDateFormat a = new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D_H_M);
    public static final SimpleDateFormat b = new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D);
    public static final SimpleDateFormat c = new SimpleDateFormat("yyyyMMdd");
    public static final SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static final SimpleDateFormat e = new SimpleDateFormat("yyyyMMddHHmmss");
    public static final SimpleDateFormat f = new SimpleDateFormat("yyyyMMddHHmmssSSS");
    public static final SimpleDateFormat g = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss S");
    public static final SimpleDateFormat h = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS");

    public static String a(long j) {
        return a(j, d);
    }

    public static String b(long j) {
        return a(j, e);
    }

    public static String a(long j, SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat.format(new Date(j));
    }

    public static String a() {
        return b.format(new Date(System.currentTimeMillis()));
    }

    public static boolean a(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5);
    }

    public static String a(SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat == null) {
            simpleDateFormat = d;
        }
        return simpleDateFormat.format(new Date(System.currentTimeMillis()));
    }
}
