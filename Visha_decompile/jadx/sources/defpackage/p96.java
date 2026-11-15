package defpackage;

public class p96 extends n96 {
    public int d;
    public int e;
    public x94 f;
    public tc8 g;
    public u08 h;
    public u94 i;
    public tc8[] j;

    public p96(int i, int i2, x94 x94Var, tc8 tc8Var, u94 u94Var, u08 u08Var, String str) {
        super(true, str);
        this.d = i;
        this.e = i2;
        this.f = x94Var;
        this.g = tc8Var;
        this.i = u94Var;
        this.h = u08Var;
        this.j = new vc8(x94Var, tc8Var).c();
    }

    public x94 c() {
        return this.f;
    }

    public tc8 d() {
        return this.g;
    }

    public u94 e() {
        return this.i;
    }

    public int f() {
        return this.e;
    }

    public int g() {
        return this.d;
    }

    public u08 h() {
        return this.h;
    }

    public tc8[] i() {
        return this.j;
    }

    public p96(int i, int i2, x94 x94Var, tc8 tc8Var, u08 u08Var, String str) {
        this(i, i2, x94Var, tc8Var, fj4.a(x94Var, tc8Var), u08Var, str);
    }
}
