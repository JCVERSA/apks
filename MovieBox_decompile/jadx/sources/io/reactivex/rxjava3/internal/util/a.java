package io.reactivex.rxjava3.internal.util;

import java.util.concurrent.atomic.AtomicLong;

public abstract class a {
    public static long a(AtomicLong atomicLong, long j10) {
        long j11;
        do {
            j11 = atomicLong.get();
            if (j11 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j11, b(j11, j10)));
        return j11;
    }

    public static long b(long j10, long j11) {
        long j12 = j10 + j11;
        if (j12 < 0) {
            return Long.MAX_VALUE;
        }
        return j12;
    }

    public static long c(long j10, long j11) {
        long j12 = j10 * j11;
        if (((j10 | j11) >>> 31) == 0 || j12 / j10 == j11) {
            return j12;
        }
        return Long.MAX_VALUE;
    }

    public static long d(AtomicLong atomicLong, long j10) {
        long j11;
        long j12;
        do {
            j11 = atomicLong.get();
            if (j11 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j12 = j11 - j10;
            if (j12 < 0) {
                dy.a.r(new IllegalStateException("More produced than requested: " + j12));
                j12 = 0L;
            }
        } while (!atomicLong.compareAndSet(j11, j12));
        return j12;
    }
}
