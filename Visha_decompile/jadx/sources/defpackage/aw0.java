package defpackage;

import java.util.Arrays;

public final class aw0 implements ja9 {
    public final int a;
    public final int[] b;
    public final long[] c;
    public final long[] d;
    public final long[] e;
    public final long f;

    public aw0(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.c = jArr;
        this.d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.a = length;
        if (length > 0) {
            this.f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f = 0L;
        }
    }

    public int a(long j) {
        return blb.i(this.e, j, true, true);
    }

    @Override
    public long getDurationUs() {
        return this.f;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        int iA = a(j);
        la9 la9Var = new la9(this.e[iA], this.c[iA]);
        if (la9Var.a >= j || iA == this.a - 1) {
            return new ja9.a(la9Var);
        }
        int i = iA + 1;
        return new ja9.a(la9Var, new la9(this.e[i], this.c[i]));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.a + ", sizes=" + Arrays.toString(this.b) + ", offsets=" + Arrays.toString(this.c) + ", timeUs=" + Arrays.toString(this.e) + ", durationsUs=" + Arrays.toString(this.d) + ")";
    }
}
