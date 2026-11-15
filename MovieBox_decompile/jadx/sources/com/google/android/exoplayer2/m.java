package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.common.primitives.Longs;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class m implements t1 {

    private final float f24555a;

    private final float f24556b;

    private final long f24557c;

    private final float f24558d;

    private final long f24559e;

    private final long f24560f;

    private final float f24561g;

    private long f24562h;

    private long f24563i;

    private long f24564j;

    private long f24565k;

    private long f24566l;

    private long f24567m;

    private float f24568n;

    private float f24569o;

    private float f24570p;

    private long f24571q;

    private long f24572r;

    private long f24573s;

    public static final class b {

        private float f24574a = 0.97f;

        private float f24575b = 1.03f;

        private long f24576c = 1000;

        private float f24577d = 1.0E-7f;

        private long f24578e = com.google.android.exoplayer2.util.p0.B0(20);

        private long f24579f = com.google.android.exoplayer2.util.p0.B0(500);

        private float f24580g = 0.999f;

        public m a() {
            return new m(this.f24574a, this.f24575b, this.f24576c, this.f24577d, this.f24578e, this.f24579f, this.f24580g);
        }
    }

    private void f(long j10) {
        long j11 = this.f24572r + (this.f24573s * 3);
        if (this.f24567m > j11) {
            float fB0 = com.google.android.exoplayer2.util.p0.B0(this.f24557c);
            this.f24567m = Longs.h(j11, this.f24564j, this.f24567m - (((long) ((this.f24570p - 1.0f) * fB0)) + ((long) ((this.f24568n - 1.0f) * fB0))));
            return;
        }
        long jR = com.google.android.exoplayer2.util.p0.r(j10 - ((long) (Math.max(0.0f, this.f24570p - 1.0f) / this.f24558d)), this.f24567m, j11);
        this.f24567m = jR;
        long j12 = this.f24566l;
        if (j12 == C.TIME_UNSET || jR <= j12) {
            return;
        }
        this.f24567m = j12;
    }

    private void g() {
        long j10 = this.f24562h;
        if (j10 != C.TIME_UNSET) {
            long j11 = this.f24563i;
            if (j11 != C.TIME_UNSET) {
                j10 = j11;
            }
            long j12 = this.f24565k;
            if (j12 != C.TIME_UNSET && j10 < j12) {
                j10 = j12;
            }
            long j13 = this.f24566l;
            if (j13 != C.TIME_UNSET && j10 > j13) {
                j10 = j13;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f24564j == j10) {
            return;
        }
        this.f24564j = j10;
        this.f24567m = j10;
        this.f24572r = C.TIME_UNSET;
        this.f24573s = C.TIME_UNSET;
        this.f24571q = C.TIME_UNSET;
    }

    private static long h(long j10, long j11, float f10) {
        return (long) ((j10 * f10) + ((1.0f - f10) * j11));
    }

    private void i(long j10, long j11) {
        long j12 = j10 - j11;
        long j13 = this.f24572r;
        if (j13 == C.TIME_UNSET) {
            this.f24572r = j12;
            this.f24573s = 0L;
        } else {
            long jMax = Math.max(j12, h(j13, j12, this.f24561g));
            this.f24572r = jMax;
            this.f24573s = h(this.f24573s, Math.abs(j12 - jMax), this.f24561g);
        }
    }

    @Override
    public float a(long j10, long j11) {
        if (this.f24562h == C.TIME_UNSET) {
            return 1.0f;
        }
        i(j10, j11);
        if (this.f24571q != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.f24571q < this.f24557c) {
            return this.f24570p;
        }
        this.f24571q = SystemClock.elapsedRealtime();
        f(j10);
        long j12 = j10 - this.f24567m;
        if (Math.abs(j12) < this.f24559e) {
            this.f24570p = 1.0f;
        } else {
            this.f24570p = com.google.android.exoplayer2.util.p0.p((this.f24558d * j12) + 1.0f, this.f24569o, this.f24568n);
        }
        return this.f24570p;
    }

    @Override
    public long b() {
        return this.f24567m;
    }

    @Override
    public void c() {
        long j10 = this.f24567m;
        if (j10 == C.TIME_UNSET) {
            return;
        }
        long j11 = j10 + this.f24560f;
        this.f24567m = j11;
        long j12 = this.f24566l;
        if (j12 != C.TIME_UNSET && j11 > j12) {
            this.f24567m = j12;
        }
        this.f24571q = C.TIME_UNSET;
    }

    @Override
    public void d(long j10) {
        this.f24563i = j10;
        g();
    }

    @Override
    public void e(w1.g gVar) {
        this.f24562h = com.google.android.exoplayer2.util.p0.B0(gVar.f27202a);
        this.f24565k = com.google.android.exoplayer2.util.p0.B0(gVar.f27203b);
        this.f24566l = com.google.android.exoplayer2.util.p0.B0(gVar.f27204c);
        float f10 = gVar.f27205d;
        if (f10 == -3.4028235E38f) {
            f10 = this.f24555a;
        }
        this.f24569o = f10;
        float f11 = gVar.f27206e;
        if (f11 == -3.4028235E38f) {
            f11 = this.f24556b;
        }
        this.f24568n = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            this.f24562h = C.TIME_UNSET;
        }
        g();
    }

    private m(float f10, float f11, long j10, float f12, long j11, long j12, float f13) {
        this.f24555a = f10;
        this.f24556b = f11;
        this.f24557c = j10;
        this.f24558d = f12;
        this.f24559e = j11;
        this.f24560f = j12;
        this.f24561g = f13;
        this.f24562h = C.TIME_UNSET;
        this.f24563i = C.TIME_UNSET;
        this.f24565k = C.TIME_UNSET;
        this.f24566l = C.TIME_UNSET;
        this.f24569o = f10;
        this.f24568n = f11;
        this.f24570p = 1.0f;
        this.f24571q = C.TIME_UNSET;
        this.f24564j = C.TIME_UNSET;
        this.f24567m = C.TIME_UNSET;
        this.f24572r = C.TIME_UNSET;
        this.f24573s = C.TIME_UNSET;
    }
}
