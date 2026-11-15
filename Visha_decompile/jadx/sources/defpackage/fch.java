package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.util.TimestampAdjuster;
import java.math.RoundingMode;

public final class fch {
    public long a;
    public long b;
    public long c;
    public final ThreadLocal d = new ThreadLocal();

    public fch(long j) {
        i(0L);
    }

    public static long g(long j) {
        return kfh.P(j, 1000000L, 90000L, RoundingMode.DOWN);
    }

    public static long h(long j) {
        return kfh.P(j, 90000L, 1000000L, RoundingMode.DOWN);
    }

    public final synchronized long a(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (!j()) {
                long jLongValue = this.a;
                if (jLongValue == TimestampAdjuster.MODE_SHARED) {
                    Long l = (Long) this.d.get();
                    if (l == null) {
                        throw null;
                    }
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
                long jH = h(j2);
                long j3 = (4294967296L + jH) / 8589934592L;
                long j4 = (((-1) + j3) * 8589934592L) + j;
                j += j3 * 8589934592L;
                if (Math.abs(j4 - jH) < Math.abs(j - jH)) {
                    j = j4;
                }
            }
            return a(g(j));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long c(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j2 = this.c;
            if (j2 != C.TIME_UNSET) {
                long jH = h(j2);
                long j3 = jH / 8589934592L;
                long j4 = (j3 * 8589934592L) + j;
                j += (j3 + 1) * 8589934592L;
                if (j4 >= jH) {
                    j = j4;
                }
            }
            return a(g(j));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long d() {
        long j = this.a;
        return (j == Long.MAX_VALUE || j == TimestampAdjuster.MODE_SHARED) ? C.TIME_UNSET : j;
    }

    public final synchronized long e() {
        long j;
        try {
            j = this.c;
        } catch (Throwable th) {
            throw th;
        }
        return j != C.TIME_UNSET ? j + this.b : d();
    }

    public final synchronized long f() {
        return this.b;
    }

    public final synchronized void i(long j) {
        this.a = j;
        this.b = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.c = C.TIME_UNSET;
    }

    public final synchronized boolean j() {
        return this.b != C.TIME_UNSET;
    }
}
