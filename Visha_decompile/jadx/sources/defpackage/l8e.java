package defpackage;

import androidx.media3.common.C;

public abstract class l8e implements kae {
    public final long a;
    public final long b;
    public final int c;
    public final long d;
    public final int e;
    public final long f;

    public l8e(long j, long j2, int i, int i2, boolean z) {
        long jD;
        this.a = j;
        this.b = j2;
        this.c = i2 == -1 ? 1 : i2;
        this.e = i;
        if (j == -1) {
            this.d = -1L;
            jD = C.TIME_UNSET;
        } else {
            this.d = j - j2;
            jD = d(j, j2, i);
        }
        this.f = jD;
    }

    public static long d(long j, long j2, int i) {
        return (Math.max(0L, j - j2) * 8000000) / ((long) i);
    }

    @Override
    public final z9e a(long j) {
        long j2 = this.d;
        if (j2 == -1) {
            lae laeVar = new lae(0L, this.b);
            return new z9e(laeVar, laeVar);
        }
        long j3 = ((long) this.e) * j;
        long j4 = this.c;
        long jMin = ((j3 / 8000000) / j4) * j4;
        if (j2 != -1) {
            jMin = Math.min(jMin, j2 - j4);
        }
        long jMax = this.b + Math.max(jMin, 0L);
        long jB = b(jMax);
        lae laeVar2 = new lae(jB, jMax);
        if (j2 != -1 && jB < j) {
            long j5 = jMax + j4;
            if (j5 < this.a) {
                return new z9e(laeVar2, new lae(b(j5), j5));
            }
        }
        return new z9e(laeVar2, laeVar2);
    }

    public final long b(long j) {
        return d(j, this.b, this.e);
    }

    @Override
    public final long zza() {
        return this.f;
    }

    @Override
    public final boolean zzh() {
        return this.d != -1;
    }
}
