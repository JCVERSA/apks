package defpackage;

public class gl4 {
    public int[] D;
    public long F;
    public w94 G;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int m = 40;
    public byte n = 3;
    public byte o = 4;
    public byte p = 5;
    public int z = 5;
    public int A = 4;
    public int B = 16;
    public int C = 2;
    public int E = 64;

    public gl4(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int[] iArr) {
        this.a = i;
        this.d = i4;
        this.e = i6;
        this.f = i7;
        this.g = i8;
        this.h = i9;
        this.b = i2;
        this.c = i3;
        int i12 = i2 * i3;
        this.r = i12;
        this.D = iArr;
        this.i = i5;
        this.j = i10;
        this.k = i11;
        this.l = (int) Math.ceil(i3 / 128);
        this.q = qlb.b(i);
        this.t = i4;
        this.s = qlb.a(i);
        this.u = qlb.b(i4);
        this.v = qlb.b(i2);
        this.w = qlb.a(i12);
        this.x = qlb.b(i12);
        this.y = qlb.b(i2);
        long j = (1 << ((int) (((long) i) % 64))) - 1;
        this.F = j;
        this.G = new w94(this.s, i, j);
    }
}
