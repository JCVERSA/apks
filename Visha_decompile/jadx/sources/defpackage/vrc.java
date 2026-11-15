package defpackage;

public final class vrc implements ma9 {
    public final long a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long[] f;

    public vrc(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public static vrc a(long j, long j2, ur6.a aVar, qw7 qw7Var) {
        int iG;
        int i = aVar.g;
        int i2 = aVar.d;
        int iN = qw7Var.n();
        if ((iN & 1) != 1 || (iG = qw7Var.G()) == 0) {
            return null;
        }
        long jB0 = blb.B0(iG, ((long) i) * 1000000, i2);
        if ((iN & 6) != 6) {
            return new vrc(j2, aVar.c, jB0);
        }
        long jE = qw7Var.E();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = qw7Var.C();
        }
        if (j != -1) {
            long j3 = j2 + jE;
            if (j != j3) {
                op5.i("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new vrc(j2, aVar.c, jB0, jE, jArr);
    }

    public final long b(int i) {
        return (this.c * ((long) i)) / 100;
    }

    @Override
    public long getDataEndPosition() {
        return this.e;
    }

    @Override
    public long getDurationUs() {
        return this.c;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        if (!isSeekable()) {
            return new ja9.a(new la9(0L, this.a + ((long) this.b)));
        }
        long jQ = blb.q(j, 0L, this.c);
        double d = (jQ * 100.0d) / this.c;
        double d2 = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                d2 = 256.0d;
            } else {
                int i = (int) d;
                long[] jArr = (long[]) zi.i(this.f);
                double d3 = jArr[i];
                d2 = d3 + ((d - ((double) i)) * ((i == 99 ? 256.0d : jArr[i + 1]) - d3));
            }
        }
        return new ja9.a(new la9(jQ, this.a + blb.q(Math.round((d2 / 256.0d) * this.d), this.b, this.d - 1)));
    }

    @Override
    public long getTimeUs(long j) {
        long j2 = j - this.a;
        if (!isSeekable() || j2 <= this.b) {
            return 0L;
        }
        long[] jArr = (long[]) zi.i(this.f);
        double d = (j2 * 256.0d) / this.d;
        int i = blb.i(jArr, (long) d, true, true);
        long jB = b(i);
        long j3 = jArr[i];
        int i2 = i + 1;
        long jB2 = b(i2);
        long j4 = i == 99 ? 256L : jArr[i2];
        return jB + Math.round((j3 == j4 ? 0.0d : (d - j3) / (j4 - j3)) * (jB2 - jB));
    }

    @Override
    public boolean isSeekable() {
        return this.f != null;
    }

    public vrc(long j, int i, long j2, long j3, long[] jArr) {
        this.a = j;
        this.b = i;
        this.c = j2;
        this.f = jArr;
        this.d = j3;
        this.e = j3 != -1 ? j + j3 : -1L;
    }
}
