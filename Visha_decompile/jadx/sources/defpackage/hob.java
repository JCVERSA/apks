package defpackage;

public final class hob implements ma9 {
    public final long[] a;
    public final long[] b;
    public final long c;
    public final long d;

    public hob(long[] jArr, long[] jArr2, long j, long j2) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j;
        this.d = j2;
    }

    public static hob a(long j, long j2, ur6.a aVar, qw7 qw7Var) {
        int iC;
        qw7Var.P(10);
        int iN = qw7Var.n();
        if (iN <= 0) {
            return null;
        }
        int i = aVar.d;
        long jB0 = blb.B0(iN, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, i);
        int I = qw7Var.I();
        int I2 = qw7Var.I();
        int I3 = qw7Var.I();
        qw7Var.P(2);
        long j3 = j2 + ((long) aVar.c);
        long[] jArr = new long[I];
        long[] jArr2 = new long[I];
        int i2 = 0;
        long j4 = j2;
        while (i2 < I) {
            int i3 = I2;
            long j5 = j3;
            jArr[i2] = (((long) i2) * jB0) / ((long) I);
            jArr2[i2] = Math.max(j4, j5);
            if (I3 == 1) {
                iC = qw7Var.C();
            } else if (I3 == 2) {
                iC = qw7Var.I();
            } else if (I3 == 3) {
                iC = qw7Var.F();
            } else {
                if (I3 != 4) {
                    return null;
                }
                iC = qw7Var.G();
            }
            j4 += ((long) iC) * ((long) i3);
            i2++;
            jArr = jArr;
            I2 = i3;
            j3 = j5;
        }
        long[] jArr3 = jArr;
        if (j != -1 && j != j4) {
            op5.i("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j4);
        }
        return new hob(jArr3, jArr2, jB0, j4);
    }

    @Override
    public long getDataEndPosition() {
        return this.d;
    }

    @Override
    public long getDurationUs() {
        return this.c;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        int i = blb.i(this.a, j, true, true);
        la9 la9Var = new la9(this.a[i], this.b[i]);
        if (la9Var.a >= j || i == this.a.length - 1) {
            return new ja9.a(la9Var);
        }
        int i2 = i + 1;
        return new ja9.a(la9Var, new la9(this.a[i2], this.b[i2]));
    }

    @Override
    public long getTimeUs(long j) {
        return this.a[blb.i(this.b, j, true, true)];
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
