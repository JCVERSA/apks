package defpackage;

public final class vfe {
    public final sfe a;
    public final int b;
    public final long[] c;
    public final int[] d;
    public final int e;
    public final long[] f;
    public final int[] g;
    public final long h;

    public vfe(sfe sfeVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        int length = iArr.length;
        int length2 = jArr2.length;
        n7g.d(length == length2);
        int length3 = jArr.length;
        n7g.d(length3 == length2);
        int length4 = iArr2.length;
        n7g.d(length4 == length2);
        this.a = sfeVar;
        this.c = jArr;
        this.d = iArr;
        this.e = i;
        this.f = jArr2;
        this.g = iArr2;
        this.h = j;
        this.b = length3;
        if (length4 > 0) {
            int i2 = length4 - 1;
            iArr2[i2] = iArr2[i2] | 536870912;
        }
    }

    public final int a(long j) {
        for (int iY = kfh.y(this.f, j, true, false); iY >= 0; iY--) {
            if ((this.g[iY] & 1) != 0) {
                return iY;
            }
        }
        return -1;
    }

    public final int b(long j) {
        long[] jArr = this.f;
        for (int iV = kfh.v(jArr, j, true, false); iV < jArr.length; iV++) {
            if ((this.g[iV] & 1) != 0) {
                return iV;
            }
        }
        return -1;
    }
}
