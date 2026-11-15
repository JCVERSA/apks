package defpackage;

import androidx.media3.common.C;

public class lf1 implements ja9 {
    public final long a;
    public final long b;
    public final int c;
    public final long d;
    public final int e;
    public final long f;
    public final boolean g;

    public lf1(long j, long j2, int i, int i2, boolean z) {
        this.a = j;
        this.b = j2;
        this.c = i2 == -1 ? 1 : i2;
        this.e = i;
        this.g = z;
        if (j == -1) {
            this.d = -1L;
            this.f = C.TIME_UNSET;
        } else {
            this.d = j - j2;
            this.f = c(j, j2, i);
        }
    }

    public static long c(long j, long j2, int i) {
        return (Math.max(0L, j - j2) * 8000000) / ((long) i);
    }

    public final long a(long j) {
        long j2 = (j * ((long) this.e)) / 8000000;
        int i = this.c;
        long jMin = (j2 / ((long) i)) * ((long) i);
        long j3 = this.d;
        if (j3 != -1) {
            jMin = Math.min(jMin, j3 - ((long) i));
        }
        return this.b + Math.max(jMin, 0L);
    }

    public long b(long j) {
        return c(j, this.b, this.e);
    }

    @Override
    public long getDurationUs() {
        return this.f;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        if (this.d == -1 && !this.g) {
            return new ja9.a(new la9(0L, this.b));
        }
        long jA = a(j);
        long jB = b(jA);
        la9 la9Var = new la9(jB, jA);
        if (this.d != -1 && jB < j) {
            int i = this.c;
            if (((long) i) + jA < this.a) {
                long j2 = jA + ((long) i);
                return new ja9.a(la9Var, new la9(b(j2), j2));
            }
        }
        return new ja9.a(la9Var);
    }

    @Override
    public boolean isSeekable() {
        return this.d != -1 || this.g;
    }
}
