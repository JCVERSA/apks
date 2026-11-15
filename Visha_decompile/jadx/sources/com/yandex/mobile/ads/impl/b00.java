package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import androidx.media3.common.C;

public final class b00 implements bs0 {
    private final long a;
    private final long b;
    private final float c;
    private long d;
    private long e;
    private long f;
    private long g;
    private long h;
    private long i;
    private float j;
    private float k;
    private float l;
    private long m;
    private long n;
    private long o;

    public static final class a {
        private long a = f92.a(20L);
        private long b = f92.a(500L);
        private float c = 0.999f;

        public final b00 a() {
            return new b00(this.a, this.b, this.c);
        }
    }

    private void b() {
        long j = this.d;
        if (j != C.TIME_UNSET) {
            long j2 = this.e;
            if (j2 != C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.g;
            if (j3 != C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.h;
            if (j4 != C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.f == j) {
            return;
        }
        this.f = j;
        this.i = j;
        this.n = C.TIME_UNSET;
        this.o = C.TIME_UNSET;
        this.m = C.TIME_UNSET;
    }

    public final float a(long j, long j2) {
        if (this.d == C.TIME_UNSET) {
            return 1.0f;
        }
        long j3 = j - j2;
        long j4 = this.n;
        if (j4 == C.TIME_UNSET) {
            this.n = j3;
            this.o = 0L;
        } else {
            float f = this.c;
            long jMax = Math.max(j3, (long) (((1.0f - f) * j3) + (j4 * f)));
            this.n = jMax;
            long jAbs = Math.abs(j3 - jMax);
            long j5 = this.o;
            float f2 = this.c;
            this.o = (long) (((1.0f - f2) * jAbs) + (j5 * f2));
        }
        if (this.m != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.m < 1000) {
            return this.l;
        }
        this.m = SystemClock.elapsedRealtime();
        long j6 = (this.o * 3) + this.n;
        if (this.i > j6) {
            float fA = f92.a(1000L);
            long[] jArr = {j6, this.f, this.i - (((long) ((this.l - 1.0f) * fA)) + ((long) ((this.j - 1.0f) * fA)))};
            long j7 = jArr[0];
            for (int i = 1; i < 3; i++) {
                long j8 = jArr[i];
                if (j8 > j7) {
                    j7 = j8;
                }
            }
            this.i = j7;
        } else {
            long jMax2 = j - ((long) (Math.max(0.0f, this.l - 1.0f) / 1.0E-7f));
            long j9 = this.i;
            int i2 = f92.a;
            long jMax3 = Math.max(j9, Math.min(jMax2, j6));
            this.i = jMax3;
            long j10 = this.h;
            if (j10 != C.TIME_UNSET && jMax3 > j10) {
                this.i = j10;
            }
        }
        long j11 = j - this.i;
        if (Math.abs(j11) < this.a) {
            this.l = 1.0f;
        } else {
            float f3 = this.k;
            float f4 = this.j;
            int i3 = f92.a;
            this.l = Math.max(f3, Math.min((j11 * 1.0E-7f) + 1.0f, f4));
        }
        return this.l;
    }

    public final void c() {
        long j = this.i;
        if (j == C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.b;
        this.i = j2;
        long j3 = this.h;
        if (j3 != C.TIME_UNSET && j2 > j3) {
            this.i = j3;
        }
        this.m = C.TIME_UNSET;
    }

    private b00(long j, long j2, float f) {
        this.a = j;
        this.b = j2;
        this.c = f;
        this.d = C.TIME_UNSET;
        this.e = C.TIME_UNSET;
        this.g = C.TIME_UNSET;
        this.h = C.TIME_UNSET;
        this.k = 0.97f;
        this.j = 1.03f;
        this.l = 1.0f;
        this.m = C.TIME_UNSET;
        this.f = C.TIME_UNSET;
        this.i = C.TIME_UNSET;
        this.n = C.TIME_UNSET;
        this.o = C.TIME_UNSET;
    }

    public final long a() {
        return this.i;
    }

    public final void a(jw0.e eVar) {
        this.d = f92.a(eVar.b);
        this.g = f92.a(eVar.c);
        this.h = f92.a(eVar.d);
        float f = eVar.e;
        if (f == -3.4028235E38f) {
            f = 0.97f;
        }
        this.k = f;
        float f2 = eVar.f;
        if (f2 == -3.4028235E38f) {
            f2 = 1.03f;
        }
        this.j = f2;
        if (f == 1.0f && f2 == 1.0f) {
            this.d = C.TIME_UNSET;
        }
        b();
    }

    public final void a(long j) {
        this.e = j;
        b();
    }
}
