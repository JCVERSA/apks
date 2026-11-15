package defpackage;

import androidx.media3.common.C;

public final class hee implements eee {
    public final long a;
    public final int b;
    public final long c;
    public final int d;
    public final long e;
    public final long f;
    public final long[] g;

    public hee(long j, int i, long j2, int i2, long j3, long[] jArr) {
        this.a = j;
        this.b = i;
        this.c = j2;
        this.d = i2;
        this.e = j3;
        this.g = jArr;
        this.f = j3 != -1 ? j + j3 : -1L;
    }

    public static hee b(gee geeVar, long j) {
        long jA = geeVar.a();
        if (jA == C.TIME_UNSET) {
            return null;
        }
        u9e u9eVar = geeVar.a;
        return new hee(j, u9eVar.c, jA, u9eVar.f, geeVar.c, geeVar.f);
    }

    @Override
    public final z9e a(long j) {
        if (!zzh()) {
            lae laeVar = new lae(0L, this.a + ((long) this.b));
            return new z9e(laeVar, laeVar);
        }
        long j2 = this.c;
        int i = kfh.a;
        long jMax = Math.max(0L, Math.min(j, j2));
        double d = (jMax * 100.0d) / j2;
        double d2 = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                d2 = 256.0d;
            } else {
                int i2 = (int) d;
                long[] jArr = this.g;
                n7g.b(jArr);
                double d3 = jArr[i2];
                d2 = d3 + ((d - ((double) i2)) * ((i2 == 99 ? 256.0d : jArr[i2 + 1]) - d3));
            }
        }
        long j3 = this.e;
        lae laeVar2 = new lae(jMax, this.a + Math.max(this.b, Math.min(Math.round((d2 / 256.0d) * j3), j3 - 1)));
        return new z9e(laeVar2, laeVar2);
    }

    @Override
    public final long c(long j) {
        if (!zzh()) {
            return 0L;
        }
        long j2 = j - this.a;
        if (j2 <= this.b) {
            return 0L;
        }
        long[] jArr = this.g;
        n7g.b(jArr);
        double d = (j2 * 256.0d) / this.e;
        int iY = kfh.y(jArr, (long) d, true, true);
        long jD = d(iY);
        long j3 = jArr[iY];
        int i = iY + 1;
        long jD2 = d(i);
        long j4 = iY == 99 ? 256L : jArr[i];
        return jD + Math.round((j3 == j4 ? 0.0d : (d - j3) / (j4 - j3)) * (jD2 - jD));
    }

    public final long d(int i) {
        return (this.c * ((long) i)) / 100;
    }

    @Override
    public final long zza() {
        return this.c;
    }

    @Override
    public final int zzc() {
        return this.d;
    }

    @Override
    public final long zzd() {
        return this.f;
    }

    @Override
    public final boolean zzh() {
        return this.g != null;
    }
}
