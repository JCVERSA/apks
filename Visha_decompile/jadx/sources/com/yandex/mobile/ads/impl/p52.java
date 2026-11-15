package com.yandex.mobile.ads.impl;

import androidx.annotation.GuardedBy;
import androidx.media3.common.C;
import androidx.media3.common.util.TimestampAdjuster;

public final class p52 {

    @GuardedBy("this")
    private long a;

    @GuardedBy("this")
    private long b;

    @GuardedBy("this")
    private long c;
    private final ThreadLocal<Long> d = new ThreadLocal<>();

    public p52(long j) {
        c(j);
    }

    public final synchronized long a(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (this.b == C.TIME_UNSET) {
                long jLongValue = this.a;
                if (jLongValue == TimestampAdjuster.MODE_SHARED) {
                    Long l = this.d.get();
                    l.getClass();
                    jLongValue = l.longValue();
                }
                this.b = jLongValue - j;
                notifyAll();
            }
            this.c = j;
            return j + this.b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long b(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j2 = this.c;
            if (j2 != C.TIME_UNSET) {
                long j3 = (j2 * 90000) / 1000000;
                long j4 = (4294967296L + j3) / 8589934592L;
                long j5 = ((j4 - 1) * 8589934592L) + j;
                j += j4 * 8589934592L;
                if (Math.abs(j5 - j3) < Math.abs(j - j3)) {
                    j = j5;
                }
            }
            return a((j * 1000000) / 90000);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long c() {
        return this.b;
    }

    public final synchronized void c(long j) {
        this.a = j;
        this.b = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.c = C.TIME_UNSET;
    }

    public final synchronized long b() {
        long jA;
        try {
            long j = this.c;
            if (j != C.TIME_UNSET) {
                jA = j + this.b;
            } else {
                jA = a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return jA;
    }

    public final synchronized long a() {
        long j;
        j = this.a;
        if (j == Long.MAX_VALUE || j == TimestampAdjuster.MODE_SHARED) {
            j = C.TIME_UNSET;
        }
        return j;
    }
}
