package defpackage;

import androidx.media3.common.C;

public final class gee {
    public final u9e a;
    public final long b;
    public final long c;
    public final int d;
    public final int e;
    public final long[] f;

    public gee(u9e u9eVar, long j, long j2, long[] jArr, int i, int i2) {
        this.a = new u9e(u9eVar);
        this.b = j;
        this.c = j2;
        this.f = jArr;
        this.d = i;
        this.e = i2;
    }

    public static gee b(u9e u9eVar, u4h u4hVar) {
        long[] jArr;
        int i;
        int i2;
        int iA = u4hVar.A();
        int iJ = (iA & 1) != 0 ? u4hVar.J() : -1;
        long jO = (iA & 2) != 0 ? u4hVar.O() : -1L;
        if ((iA & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i3 = 0; i3 < 100; i3++) {
                jArr2[i3] = u4hVar.G();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((iA & 8) != 0) {
            u4hVar.m(4);
        }
        if (u4hVar.u() >= 24) {
            u4hVar.m(21);
            int I = u4hVar.I();
            i2 = I & 4095;
            i = I >> 12;
        } else {
            i = -1;
            i2 = -1;
        }
        return new gee(u9eVar, iJ, jO, jArr, i, i2);
    }

    public final long a() {
        long j = this.b;
        if (j == -1 || j == 0) {
            return C.TIME_UNSET;
        }
        u9e u9eVar = this.a;
        return kfh.O((j * ((long) u9eVar.g)) - 1, u9eVar.d);
    }
}
