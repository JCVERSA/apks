package com.amazonaws.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public class DateUtils {

    private static final TimeZone f18374a = TimeZone.getTimeZone("GMT");

    private static final Map f18375b = new HashMap();

    public static Date b(Date date) {
        if (date == null) {
            return null;
        }
        return new Date(date.getTime());
    }

    public static String c(String str, Date date) {
        return ((SimpleDateFormat) e(str).get()).format(date);
    }

    public static String d(Date date) {
        return c("EEE, dd MMM yyyy HH:mm:ss z", date);
    }

    private static ThreadLocal e(final String str) {
        Map map = f18375b;
        ThreadLocal<SimpleDateFormat> threadLocal = (ThreadLocal) map.get(str);
        if (threadLocal == null) {
            synchronized (map) {
                try {
                    threadLocal = (ThreadLocal) map.get(str);
                    if (threadLocal == null) {
                        threadLocal = new ThreadLocal<SimpleDateFormat>() {
                            @Override
                            public SimpleDateFormat initialValue() {
                                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
                                simpleDateFormat.setTimeZone(DateUtils.f18374a);
                                simpleDateFormat.setLenient(false);
                                return simpleDateFormat;
                            }
                        };
                        map.put(str, threadLocal);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return threadLocal;
    }

    public static Date f(String str, String str2) {
        try {
            return ((SimpleDateFormat) e(str).get()).parse(str2);
        } catch (ParseException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static Date g(String str) {
        return f("yyyyMMdd'T'HHmmss'Z'", str);
    }

    public static Date h(String str) {
        try {
            return f("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", str);
        } catch (IllegalArgumentException unused) {
            return f("yyyy-MM-dd'T'HH:mm:ss'Z'", str);
        }
    }

    public static Date i(String str) {
        return f("EEE, dd MMM yyyy HH:mm:ss z", str);
    }
}
