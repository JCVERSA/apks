package defpackage;

import java.math.RoundingMode;

public final class ple implements kae {
    public final mle a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;

    public ple(mle mleVar, int i, long j, long j2) {
        this.a = mleVar;
        this.b = i;
        this.c = j;
        long j3 = (j2 - j) / ((long) mleVar.d);
        this.d = j3;
        this.e = b(j3);
    }

    private final long b(long j) {
        return kfh.P(j * ((long) this.b), 1000000L, this.a.c, RoundingMode.DOWN);
    }

    @Override
    public final z9e a(long j) {
        long j2 = this.b;
        mle mleVar = this.a;
        long j3 = (((long) mleVar.c) * j) / (j2 * 1000000);
        int i = kfh.a;
        long j4 = this.d - 1;
        long jMax = Math.max(0L, Math.min(j3, j4));
        long j5 = mleVar.d;
        long jB = b(jMax);
        long j6 = this.c;
        lae laeVar = new lae(jB, (jMax * j5) + j6);
        if (jB >= j || jMax == j4) {
            return new z9e(laeVar, laeVar);
        }
        long j7 = jMax + 1;
        return new z9e(laeVar, new lae(b(j7), j6 + (j5 * j7)));
    }

    @Override
    public final long zza() {
        return this.e;
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
