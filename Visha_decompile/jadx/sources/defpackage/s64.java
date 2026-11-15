package defpackage;

public class s64 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final short[] h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final csc u;
    public final u64 v;

    public s64(int i, int i2, int i3, short[] sArr, csc cscVar, u64 u64Var) {
        this.c = i;
        this.a = i2;
        this.b = 1 << i2;
        this.d = i3;
        int i4 = i3 * 64;
        this.i = i4;
        this.j = i4;
        this.k = i4;
        this.l = i4;
        this.m = i4;
        this.n = i4;
        this.o = i4 / 8;
        this.p = i4 / 8;
        int i5 = i4 / 8;
        this.q = i5;
        this.r = i4 / 8;
        int i6 = i4 / 8;
        this.s = i6;
        this.t = i4 / 8;
        int i7 = ((i2 * i) * 8) / 8;
        this.g = ((i2 * 64) / 8) + i7;
        int i8 = i7 + 16;
        this.f = i8;
        this.e = i5 + i8 + (i * 16) + i6;
        this.h = sArr;
        this.u = cscVar;
        this.v = u64Var;
    }
}
