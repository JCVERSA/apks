package defpackage;

public final class jz4 implements ja9 {
    public final long[] a;
    public final long[] b;
    public final long c;
    public final boolean d;

    public jz4(long[] jArr, long[] jArr2, long j) {
        zi.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.d = z;
        if (!z || jArr2[0] <= 0) {
            this.a = jArr;
            this.b = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.a = jArr3;
            long[] jArr4 = new long[i];
            this.b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.c = j;
    }

    @Override
    public long getDurationUs() {
        return this.c;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        if (!this.d) {
            return new ja9.a(la9.c);
        }
        int i = blb.i(this.b, j, true, true);
        la9 la9Var = new la9(this.b[i], this.a[i]);
        if (la9Var.a == j || i == this.b.length - 1) {
            return new ja9.a(la9Var);
        }
        int i2 = i + 1;
        return new ja9.a(la9Var, new la9(this.b[i2], this.a[i2]));
    }

    @Override
    public boolean isSeekable() {
        return this.d;
    }
}
