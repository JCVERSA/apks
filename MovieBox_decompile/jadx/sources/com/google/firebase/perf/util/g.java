package com.google.firebase.perf.util;

import java.util.concurrent.TimeUnit;

public class g {

    private long f31549a;

    private long f31550b;

    private TimeUnit f31551c;

    static class a {

        static final int[] f31552a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f31552a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31552a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31552a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public g(long j10, long j11, TimeUnit timeUnit) {
        this.f31549a = j10;
        this.f31550b = j11;
        this.f31551c = timeUnit;
    }

    public double a() {
        int i10 = a.f31552a[this.f31551c.ordinal()];
        if (i10 == 1) {
            return (this.f31549a / this.f31550b) * TimeUnit.SECONDS.toNanos(1L);
        }
        if (i10 != 2) {
            return i10 != 3 ? this.f31549a / this.f31551c.toSeconds(this.f31550b) : (this.f31549a / this.f31550b) * TimeUnit.SECONDS.toMillis(1L);
        }
        return (this.f31549a / this.f31550b) * TimeUnit.SECONDS.toMicros(1L);
    }
}
