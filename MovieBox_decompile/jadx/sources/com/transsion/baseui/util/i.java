package com.transsion.baseui.util;

public final class i {

    private static long f42345b;

    private static long f42346c;

    public static final i f42344a = new i();

    public static final int f42347d = 8;

    private i() {
    }

    public final String a(long j10) {
        long jCurrentTimeMillis = (System.currentTimeMillis() - f42346c) / ((long) 1000);
        if (jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = 1;
        }
        f42346c = System.currentTimeMillis();
        long j11 = (j10 - f42345b) / jCurrentTimeMillis;
        f42345b = j10;
        if (j11 <= 0) {
            return "0KB/s";
        }
        return zg.b.a(j11, 1) + "/s";
    }
}
