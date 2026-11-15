package defpackage;

public final class gva {
    public final tua a;
    public final int b;
    public final long[] c;
    public final int[] d;
    public final int e;
    public final long[] f;
    public final int[] g;
    public final long h;

    public gva(tua tuaVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        zi.a(iArr.length == jArr2.length);
        zi.a(jArr.length == jArr2.length);
        zi.a(iArr2.length == jArr2.length);
        this.a = tuaVar;
        this.c = jArr;
        this.d = iArr;
        this.e = i;
        this.f = jArr2;
        this.g = iArr2;
        this.h = j;
        this.b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j) {
        for (int i = blb.i(this.f, j, true, false); i >= 0; i--) {
            if ((this.g[i] & 1) != 0) {
                return i;
            }
        }
        return -1;
    }

    public int b(long j) {
        for (int iE = blb.e(this.f, j, true, false); iE < this.f.length; iE++) {
            if ((this.g[iE] & 1) != 0) {
                return iE;
            }
        }
        return -1;
    }
}
