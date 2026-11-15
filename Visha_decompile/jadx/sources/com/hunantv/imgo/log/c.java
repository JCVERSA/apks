package com.hunantv.imgo.log;

public class c {
    public static LogConfig c;
    public static final String[] a = {"mobile.api.hunantv.com", "baidu.com", "qq.com"};
    public static String b = null;
    private static int d = 3;
    private static long e = 30;

    public static long a() {
        LogConfig logConfig = c;
        if (logConfig == null) {
            return 1048576L;
        }
        return logConfig.a();
    }

    public static long b() {
        return 10L;
    }

    public static long c() {
        LogConfig logConfig = c;
        return logConfig == null ? d : logConfig.b();
    }

    public static long d() {
        LogConfig logConfig = c;
        return logConfig == null ? e : logConfig.c();
    }
}
