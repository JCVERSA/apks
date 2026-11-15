package com.google.android.exoplayer2;

import android.os.SystemClock;
import androidx.media3.common.C;
import com.google.common.primitives.Longs;
import defpackage.blb;

public final class f implements m {
    public final float a;
    public final float b;
    public final long c;
    public final float d;
    public final long e;
    public final long f;
    public final float g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public float n;
    public float o;
    public float p;
    public long q;
    public long r;
    public long s;

    public static final class b {
        public float a = 0.97f;
        public float b = 1.03f;
        public long c = 1000;
        public float d = 1.0E-7f;
        public long e = blb.t0(20);
        public long f = blb.t0(500);
        public float g = 0.999f;

        public f a() {
            return new f(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
        }
    }

    public static long d(long j, long j2, float f) {
        return (long) ((j * f) + ((1.0f - f) * j2));
    }

    @Override
    public void a(n.g gVar) {
        this.h = blb.t0(gVar.b);
        this.k = blb.t0(gVar.c);
        this.l = blb.t0(gVar.d);
        float f = gVar.e;
        if (f == -3.4028235E38f) {
            f = this.a;
        }
        this.o = f;
        float f2 = gVar.f;
        if (f2 == -3.4028235E38f) {
            f2 = this.b;
        }
        this.n = f2;
        if (f == 1.0f && f2 == 1.0f) {
            this.h = C.TIME_UNSET;
        }
        c();
    }

    public final void b(long j) {
        long j2 = this.r + (this.s * 3);
        if (this.m > j2) {
            float fT0 = blb.t0(this.c);
            this.m = Longs.h(j2, this.j, this.m - (((long) ((this.p - 1.0f) * fT0)) + ((long) ((this.n - 1.0f) * fT0))));
            return;
        }
        long jQ = blb.q(j - ((long) (Math.max(0.0f, this.p - 1.0f) / this.d)), this.m, j2);
        this.m = jQ;
        long j3 = this.l;
        if (j3 == C.TIME_UNSET || jQ <= j3) {
            return;
        }
        this.m = j3;
    }

    public final void c() {
        long j = this.h;
        if (j != C.TIME_UNSET) {
            long j2 = this.i;
            if (j2 != C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.k;
            if (j3 != C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.l;
            if (j4 != C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.j == j) {
            return;
        }
        this.j = j;
        this.m = j;
        this.r = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
        this.q = C.TIME_UNSET;
    }

    public final void e(long j, long j2) {
        long j3 = j - j2;
        long j4 = this.r;
        if (j4 == C.TIME_UNSET) {
            this.r = j3;
            this.s = 0L;
        } else {
            long jMax = Math.max(j3, d(j4, j3, this.g));
            this.r = jMax;
            this.s = d(this.s, Math.abs(j3 - jMax), this.g);
        }
    }

    @Override
    public float getAdjustedPlaybackSpeed(long j, long j2) {
        if (this.h == C.TIME_UNSET) {
            return 1.0f;
        }
        e(j, j2);
        if (this.q != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.q < this.c) {
            return this.p;
        }
        this.q = SystemClock.elapsedRealtime();
        b(j);
        long j3 = j - this.m;
        if (Math.abs(j3) < this.e) {
            this.p = 1.0f;
        } else {
            this.p = blb.o((this.d * j3) + 1.0f, this.o, this.n);
        }
        return this.p;
    }

    @Override
    public long getTargetLiveOffsetUs() {
        return this.m;
    }

    @Override
    public void notifyRebuffer() {
        long j = this.m;
        if (j == C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.f;
        this.m = j2;
        long j3 = this.l;
        if (j3 != C.TIME_UNSET && j2 > j3) {
            this.m = j3;
        }
        this.q = C.TIME_UNSET;
    }

    @Override
    public void setTargetLiveOffsetOverrideUs(long j) {
        this.i = j;
        c();
    }

    public f(float f, float f2, long j, float f3, long j2, long j3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = j;
        this.d = f3;
        this.e = j2;
        this.f = j3;
        this.g = f4;
        this.h = C.TIME_UNSET;
        this.i = C.TIME_UNSET;
        this.k = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
        this.o = f;
        this.n = f2;
        this.p = 1.0f;
        this.q = C.TIME_UNSET;
        this.j = C.TIME_UNSET;
        this.m = C.TIME_UNSET;
        this.r = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
    }
}
