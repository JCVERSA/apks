package defpackage;

import com.google.android.exoplayer2.k;

public final class tua {
    public final int a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final k f;
    public final int g;
    public final long[] h;
    public final long[] i;
    public final int j;
    public final vua[] k;

    public tua(int i, int i2, long j, long j2, long j3, k kVar, int i3, vua[] vuaVarArr, int i4, long[] jArr, long[] jArr2) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = kVar;
        this.g = i3;
        this.k = vuaVarArr;
        this.j = i4;
        this.h = jArr;
        this.i = jArr2;
    }

    public vua a(int i) {
        vua[] vuaVarArr = this.k;
        if (vuaVarArr == null) {
            return null;
        }
        return vuaVarArr[i];
    }
}
