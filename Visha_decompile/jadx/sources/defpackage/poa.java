package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.util.TimestampAdjuster;

public final class poa {
    public long a;
    public long b;
    public long c;
    public final ThreadLocal d = new ThreadLocal();

    public poa(long j) {
        g(j);
    }

    public static long f(long j) {
        return (j * 1000000) / 90000;
    }

    public static long h(long j) {
        return (j * 90000) / 1000000;
    }

    public synchronized long a(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (this.b == C.TIME_UNSET) {
                long jLongValue = this.a;
                if (jLongValue == TimestampAdjuster.MODE_SHARED) {
                    jLongValue = ((Long) zi.e((Long) this.d.get())).longValue();
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

    public synchronized long b(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j2 = this.c;
            if (j2 != C.TIME_UNSET) {
                long jH = h(j2);
                long j3 = (4294967296L + jH) / 8589934592L;
                long j4 = ((j3 - 1) * 8589934592L) + j;
                j += j3 * 8589934592L;
                if (Math.abs(j4 - jH) < Math.abs(j - jH)) {
                    j = j4;
                }
            }
            return a(f(j));
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long c() {
        long j;
        j = this.a;
        if (j == Long.MAX_VALUE || j == TimestampAdjuster.MODE_SHARED) {
            j = C.TIME_UNSET;
        }
        return j;
    }

    public synchronized long d() {
        long j;
        try {
            j = this.c;
        } catch (Throwable th) {
            throw th;
        }
        return j != C.TIME_UNSET ? j + this.b : c();
    }

    public synchronized long e() {
        return this.b;
    }

    public synchronized void g(long j) {
        this.a = j;
        this.b = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.c = C.TIME_UNSET;
    }
}
