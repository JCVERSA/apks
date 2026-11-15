package com.mgtv.data.aphone.core.j;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class e {
    public static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMddHHmmss");
    public static final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static final SimpleDateFormat c = new SimpleDateFormat("yyyyMMdd");
    public static final SimpleDateFormat d = new SimpleDateFormat("hh");
    public static final SimpleDateFormat e = new SimpleDateFormat("HH");
    public static final SimpleDateFormat f = new SimpleDateFormat("mm");

    public static String a(long j) {
        return a(j, b);
    }

    public static String b(long j) {
        return a(j, a);
    }

    public static String c(long j) {
        return a(j, c);
    }

    public static String d(long j) {
        return a(j, e);
    }

    public static String e(long j) {
        return a(j, f);
    }

    public static String a(long j, SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat.format(new Date(j));
    }

    public static int a(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        int i = calendar.get(6);
        int i2 = calendar2.get(6);
        int i3 = calendar.get(1);
        int i4 = calendar2.get(1);
        if (i3 != i4) {
            int i5 = 0;
            while (i3 < i4) {
                i5 = ((i3 % 4 != 0 || i3 % 100 == 0) && i3 % 400 != 0) ? i5 + TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY : i5 + 366;
                i3++;
            }
            return i5 + (i2 - i);
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("判断day2 - day1 : ");
        int i6 = i2 - i;
        sb.append(i6);
        printStream.println(sb.toString());
        return i6;
    }
}
