package androidx.media3.common.util;

import android.os.SystemClock;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.concurrent.TimeoutException;

public final class p0 {

    private long f10124a;

    private long f10125b;

    private long f10126c;

    private final ThreadLocal f10127d = new ThreadLocal();

    public p0(long j10) {
        i(j10);
    }

    public static long h(long j10) {
        return a1.e1(j10, 1000000L, 90000L);
    }

    public static long k(long j10) {
        return a1.e1(j10, 90000L, 1000000L);
    }

    public static long l(long j10) {
        return k(j10) % 8589934592L;
    }

    public synchronized long a(long j10) {
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (!g()) {
                long jLongValue = this.f10124a;
                if (jLongValue == 9223372036854775806L) {
                    jLongValue = ((Long) a.e((Long) this.f10127d.get())).longValue();
                }
                this.f10125b = jLongValue - j10;
                notifyAll();
            }
            this.f10126c = j10;
            return j10 + this.f10125b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long b(long j10) {
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j11 = this.f10126c;
            if (j11 != C.TIME_UNSET) {
                long jK = k(j11);
                long j12 = (TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE + jK) / 8589934592L;
                long j13 = ((j12 - 1) * 8589934592L) + j10;
                j10 += j12 * 8589934592L;
                if (Math.abs(j13 - jK) < Math.abs(j10 - jK)) {
                    j10 = j13;
                }
            }
            return a(h(j10));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long c(long j10) {
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j11 = this.f10126c;
        if (j11 != C.TIME_UNSET) {
            long jK = k(j11);
            long j12 = jK / 8589934592L;
            Long.signum(j12);
            long j13 = (j12 * 8589934592L) + j10;
            j10 += (j12 + 1) * 8589934592L;
            if (j13 >= jK) {
                j10 = j13;
            }
        }
        return a(h(j10));
    }

    public synchronized long d() {
        long j10;
        j10 = this.f10124a;
        if (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) {
            j10 = C.TIME_UNSET;
        }
        return j10;
    }

    public synchronized long e() {
        long j10;
        try {
            j10 = this.f10126c;
        } catch (Throwable th2) {
            throw th2;
        }
        return j10 != C.TIME_UNSET ? j10 + this.f10125b : d();
    }

    public synchronized long f() {
        return this.f10125b;
    }

    public synchronized boolean g() {
        return this.f10125b != C.TIME_UNSET;
    }

    public synchronized void i(long j10) {
        this.f10124a = j10;
        this.f10125b = j10 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f10126c = C.TIME_UNSET;
    }

    public synchronized void j(boolean z10, long j10, long j11) {
        try {
            a.g(this.f10124a == 9223372036854775806L);
            if (g()) {
                return;
            }
            if (z10) {
                this.f10127d.set(Long.valueOf(j10));
            } else {
                long jElapsedRealtime = 0;
                long j12 = j11;
                while (!g()) {
                    if (j11 == 0) {
                        wait();
                    } else {
                        a.g(j12 > 0);
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        wait(j12);
                        jElapsedRealtime += SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime >= j11 && !g()) {
                            throw new TimeoutException("TimestampAdjuster failed to initialize in " + j11 + " milliseconds");
                        }
                        j12 = j11 - jElapsedRealtime;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
