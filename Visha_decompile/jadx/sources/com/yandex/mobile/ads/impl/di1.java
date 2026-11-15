package com.yandex.mobile.ads.impl;

public final class di1 {
    private static final di1 c = new di1(-1, -1);
    private final long a;
    private final long b;

    public static final class a {
        public static di1 a() {
            return di1.c;
        }
    }

    public di1(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final long b() {
        return this.b;
    }

    public final long c() {
        return this.a;
    }
}
