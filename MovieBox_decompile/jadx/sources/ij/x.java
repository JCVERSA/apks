package ij;

import android.support.v4.media.session.PlaybackStateCompat;

public final class x {

    public static final x f62125a = new x();

    private static long f62126b = -1;

    private static long f62127c;

    private x() {
    }

    private final long a() {
        return System.currentTimeMillis();
    }

    private final long c(long j10) {
        long jA = a();
        while (jA <= j10) {
            jA = a();
        }
        return jA;
    }

    public final synchronized long b() {
        long jA;
        try {
            jA = a();
            long j10 = f62126b;
            if (jA < j10) {
                throw new IllegalStateException(("系统时钟回拨，拒绝生成 ID（lastTimestamp=" + j10 + ", now=" + jA + "）").toString());
            }
            if (jA == j10) {
                long j11 = (f62127c + 1) & 4095;
                f62127c = j11;
                if (j11 == 0) {
                    jA = c(j10);
                }
            } else {
                f62127c = 0L;
            }
            f62126b = jA;
        } catch (Throwable th2) {
            throw th2;
        }
        return ((jA - 1704067200000L) << 22) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM | f62127c;
    }
}
