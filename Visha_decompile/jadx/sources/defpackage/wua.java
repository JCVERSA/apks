package defpackage;

public final class wua {
    public a42 a;
    public long b;
    public long c;
    public long d;
    public int e;
    public int f;
    public boolean l;
    public vua n;
    public boolean p;
    public long q;
    public boolean r;
    public long[] g = new long[0];
    public int[] h = new int[0];
    public int[] i = new int[0];
    public long[] j = new long[0];
    public boolean[] k = new boolean[0];
    public boolean[] m = new boolean[0];
    public final qw7 o = new qw7();

    public void a(pk3 pk3Var) {
        pk3Var.readFully(this.o.d(), 0, this.o.f());
        this.o.O(0);
        this.p = false;
    }

    public void b(qw7 qw7Var) {
        qw7Var.j(this.o.d(), 0, this.o.f());
        this.o.O(0);
        this.p = false;
    }

    public long c(int i) {
        return this.j[i];
    }

    public void d(int i) {
        this.o.K(i);
        this.l = true;
        this.p = true;
    }

    public void e(int i, int i2) {
        this.e = i;
        this.f = i2;
        if (this.h.length < i) {
            this.g = new long[i];
            this.h = new int[i];
        }
        if (this.i.length < i2) {
            int i3 = (i2 * 125) / 100;
            this.i = new int[i3];
            this.j = new long[i3];
            this.k = new boolean[i3];
            this.m = new boolean[i3];
        }
    }

    public void f() {
        this.e = 0;
        this.q = 0L;
        this.r = false;
        this.l = false;
        this.p = false;
        this.n = null;
    }

    public boolean g(int i) {
        return this.l && this.m[i];
    }
}
