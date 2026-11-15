package com.blankj.utilcode.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public abstract class c0 {

    private static final ThreadLocal f19466a = new a();

    private static final String[] f19467b = {"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};

    private static final int[] f19468c = {20, 19, 21, 21, 21, 22, 23, 23, 23, 24, 23, 22};

    private static final String[] f19469d = {"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座"};

    class a extends ThreadLocal {
        a() {
        }

        @Override
        public Map initialValue() {
            return new HashMap();
        }
    }

    public static long a(Date date) {
        return date.getTime();
    }

    public static String b(Date date, String str) {
        return d(str).format(date);
    }

    private static SimpleDateFormat c() {
        return d("yyyy-MM-dd HH:mm:ss");
    }

    public static SimpleDateFormat d(String str) {
        Map map = (Map) f19466a.get();
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) map.get(str);
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str);
        map.put(str, simpleDateFormat2);
        return simpleDateFormat2;
    }

    private static long e() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static boolean f(long j10) {
        long jE = e();
        return j10 >= jE && j10 < jE + 86400000;
    }

    public static Date g(long j10) {
        return new Date(j10);
    }

    public static String h(long j10) {
        return j(j10, c());
    }

    public static String i(long j10, String str) {
        return j(j10, d(str));
    }

    public static String j(long j10, DateFormat dateFormat) {
        return dateFormat.format(new Date(j10));
    }

    public static Date k(String str) {
        return m(str, c());
    }

    public static Date l(String str, String str2) {
        return m(str, d(str2));
    }

    public static Date m(String str, DateFormat dateFormat) {
        try {
            return dateFormat.parse(str);
        } catch (ParseException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
