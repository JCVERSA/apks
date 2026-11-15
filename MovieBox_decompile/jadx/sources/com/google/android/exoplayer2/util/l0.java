package com.google.android.exoplayer2.util;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class l0 {

    private long f26831a;

    private long f26832b;

    private long f26833c;

    private final ThreadLocal f26834d = new ThreadLocal();

    public l0(long j10) {
        g(j10);
    }

    public static long f(long j10) {
        return (j10 * 1000000) / 90000;
    }

    public static long i(long j10) {
        return (j10 * 90000) / 1000000;
    }

    public static long j(long j10) {
        return i(j10) % 8589934592L;
    }

    public synchronized long a(long j10) {
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (this.f26832b == C.TIME_UNSET) {
                long jLongValue = this.f26831a;
                if (jLongValue == 9223372036854775806L) {
                    jLongValue = ((Long) a.e((Long) this.f26834d.get())).longValue();
                }
                this.f26832b = jLongValue - j10;
                notifyAll();
            }
            this.f26833c = j10;
            return j10 + this.f26832b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long b(long j10) {
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j11 = this.f26833c;
            if (j11 != C.TIME_UNSET) {
                long jI = i(j11);
                long j12 = (TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE + jI) / 8589934592L;
                long j13 = ((j12 - 1) * 8589934592L) + j10;
                j10 += j12 * 8589934592L;
                if (Math.abs(j13 - jI) < Math.abs(j10 - jI)) {
                    j10 = j13;
                }
            }
            return a(f(j10));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long c() {
        long j10;
        j10 = this.f26831a;
        if (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) {
            j10 = C.TIME_UNSET;
        }
        return j10;
    }

    public synchronized long d() {
        long j10;
        try {
            j10 = this.f26833c;
        } catch (Throwable th2) {
            throw th2;
        }
        return j10 != C.TIME_UNSET ? j10 + this.f26832b : c();
    }

    public synchronized long e() {
        return this.f26832b;
    }

    public synchronized void g(long j10) {
        this.f26831a = j10;
        this.f26832b = j10 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f26833c = C.TIME_UNSET;
    }

    public synchronized void h(boolean z10, long j10) {
        try {
            a.g(this.f26831a == 9223372036854775806L);
            if (this.f26832b != C.TIME_UNSET) {
                return;
            }
            if (z10) {
                this.f26834d.set(Long.valueOf(j10));
            } else {
                while (this.f26832b == C.TIME_UNSET) {
                    wait();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
