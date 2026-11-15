package defpackage;

public final class sfe {
    public final int a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final erj g;
    public final int h;
    public final long[] i;
    public final long[] j;
    public final int k;
    public final tfe[] l;

    public sfe(int i, int i2, long j, long j2, long j3, long j4, erj erjVar, int i3, tfe[] tfeVarArr, int i4, long[] jArr, long[] jArr2) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4;
        this.g = erjVar;
        this.h = i3;
        this.l = tfeVarArr;
        this.k = i4;
        this.i = jArr;
        this.j = jArr2;
    }

    public final sfe a(erj erjVar) {
        return new sfe(this.a, this.b, this.c, this.d, this.e, this.f, erjVar, this.h, this.l, this.k, this.i, this.j);
    }

    public final tfe b(int i) {
        return this.l[i];
    }
}
