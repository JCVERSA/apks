package defpackage;

import android.os.SystemClock;
import androidx.media3.common.C;

public final class w1j {
    public final long a;
    public final long b;
    public long c = C.TIME_UNSET;
    public long d = C.TIME_UNSET;
    public long f = C.TIME_UNSET;
    public long g = C.TIME_UNSET;
    public float j = 0.97f;
    public float i = 1.03f;
    public float k = 1.0f;
    public long l = C.TIME_UNSET;
    public long e = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public long m = C.TIME_UNSET;
    public long n = C.TIME_UNSET;

    public w1j(float f, float f2, long j, float f3, long j2, long j3, float f4, s1j s1jVar) {
        this.a = j2;
        this.b = j3;
    }

    public static long f(long j, long j2, float f) {
        return (long) ((j * 0.999f) + (j2 * 9.999871E-4f));
    }

    public final float a(long j, long j2) {
        long j3;
        if (this.c == C.TIME_UNSET) {
            return 1.0f;
        }
        long j4 = j - j2;
        long j5 = this.m;
        if (j5 == C.TIME_UNSET) {
            this.m = j4;
            this.n = 0L;
        } else {
            long jMax = Math.max(j4, f(j5, j4, 0.999f));
            this.m = jMax;
            this.n = f(this.n, Math.abs(j4 - jMax), 0.999f);
        }
        if (this.l != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.l < 1000) {
            return this.k;
        }
        this.l = SystemClock.elapsedRealtime();
        long j6 = this.m + (this.n * 3);
        if (this.h > j6) {
            float fN = kfh.N(1000L);
            long[] jArr = {j6, this.e, this.h - (((long) ((this.k - 1.0f) * fN)) + ((long) ((this.i - 1.0f) * fN)))};
            j3 = jArr[0];
            for (int i = 1; i < 3; i++) {
                long j7 = jArr[i];
                if (j7 > j3) {
                    j3 = j7;
                }
            }
            this.h = j3;
        } else {
            long jMax2 = j - ((long) (Math.max(0.0f, this.k - 1.0f) / 1.0E-7f));
            long j8 = this.h;
            int i2 = kfh.a;
            long jMax3 = Math.max(j8, Math.min(jMax2, j6));
            this.h = jMax3;
            long j9 = this.g;
            if (j9 == C.TIME_UNSET || jMax3 <= j9) {
                j3 = jMax3;
            } else {
                this.h = j9;
                j3 = j9;
            }
        }
        long j10 = j - j3;
        if (Math.abs(j10) < this.a) {
            this.k = 1.0f;
            return 1.0f;
        }
        float fMax = Math.max(this.j, Math.min((j10 * 1.0E-7f) + 1.0f, this.i));
        this.k = fMax;
        return fMax;
    }

    public final long b() {
        return this.h;
    }

    public final void c() {
        long j = this.h;
        if (j == C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.b;
        this.h = j2;
        long j3 = this.g;
        if (j3 != C.TIME_UNSET && j2 > j3) {
            this.h = j3;
        }
        this.l = C.TIME_UNSET;
    }

    public final void d(wfe wfeVar) {
        long j = wfeVar.a;
        this.c = kfh.N(C.TIME_UNSET);
        this.f = kfh.N(C.TIME_UNSET);
        this.g = kfh.N(C.TIME_UNSET);
        this.j = 0.97f;
        this.i = 1.03f;
        g();
    }

    public final void e(long j) {
        this.d = j;
        g();
    }

    public final void g() {
        long j;
        long j2 = this.c;
        if (j2 != C.TIME_UNSET) {
            j = this.d;
            if (j == C.TIME_UNSET) {
                long j3 = this.f;
                if (j3 != C.TIME_UNSET && j2 < j3) {
                    j2 = j3;
                }
                j = this.g;
                if (j == C.TIME_UNSET || j2 <= j) {
                    j = j2;
                }
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.e == j) {
            return;
        }
        this.e = j;
        this.h = j;
        this.m = C.TIME_UNSET;
        this.n = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
    }
}
