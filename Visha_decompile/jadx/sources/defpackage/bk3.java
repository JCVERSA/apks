package defpackage;

import java.io.IOException;

public class bk3 extends j1 {
    public l1 b;
    public boolean c;
    public m1 d;
    public static final l1 e = new l1("2.5.29.9").E();
    public static final l1 f = new l1("2.5.29.14").E();
    public static final l1 g = new l1("2.5.29.15").E();
    public static final l1 h = new l1("2.5.29.16").E();
    public static final l1 i = new l1("2.5.29.17").E();
    public static final l1 j = new l1("2.5.29.18").E();
    public static final l1 k = new l1("2.5.29.19").E();
    public static final l1 l = new l1("2.5.29.20").E();
    public static final l1 m = new l1("2.5.29.21").E();
    public static final l1 n = new l1("2.5.29.23").E();
    public static final l1 o = new l1("2.5.29.24").E();
    public static final l1 p = new l1("2.5.29.27").E();
    public static final l1 q = new l1("2.5.29.28").E();
    public static final l1 r = new l1("2.5.29.29").E();
    public static final l1 s = new l1("2.5.29.30").E();
    public static final l1 t = new l1("2.5.29.31").E();
    public static final l1 u = new l1("2.5.29.32").E();
    public static final l1 v = new l1("2.5.29.33").E();
    public static final l1 w = new l1("2.5.29.35").E();
    public static final l1 x = new l1("2.5.29.36").E();
    public static final l1 y = new l1("2.5.29.37").E();
    public static final l1 z = new l1("2.5.29.46").E();
    public static final l1 A = new l1("2.5.29.54").E();
    public static final l1 B = new l1("1.3.6.1.5.5.7.1.1").E();
    public static final l1 C = new l1("1.3.6.1.5.5.7.1.11").E();
    public static final l1 D = new l1("1.3.6.1.5.5.7.1.12").E();
    public static final l1 E = new l1("1.3.6.1.5.5.7.1.2").E();
    public static final l1 F = new l1("1.3.6.1.5.5.7.1.3").E();
    public static final l1 G = new l1("1.3.6.1.5.5.7.1.4").E();
    public static final l1 H = new l1("2.5.29.56").E();
    public static final l1 I = new l1("2.5.29.55").E();
    public static final l1 J = new l1("2.5.29.60").E();
    public static final l1 K = new l1("2.5.29.72").E();
    public static final l1 L = new l1("2.5.29.73").E();
    public static final l1 M = new l1("2.5.29.74").E();
    public static final l1 N = new l1("2.16.840.1.114027.80.6.1");

    public bk3(l1 l1Var, boolean z2, m1 m1Var) {
        this.b = l1Var;
        this.c = z2;
        this.d = m1Var;
    }

    public static p1 m(bk3 bk3Var) {
        try {
            return p1.t(bk3Var.o().z());
        } catch (IOException e2) {
            throw new IllegalArgumentException("can't convert extension: " + e2);
        }
    }

    public static bk3 p(Object obj) {
        if (obj instanceof bk3) {
            return (bk3) obj;
        }
        if (obj != null) {
            return new bk3(s1.z(obj));
        }
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof bk3)) {
            return false;
        }
        bk3 bk3Var = (bk3) obj;
        return bk3Var.n().s(n()) && bk3Var.o().s(o()) && bk3Var.r() == r();
    }

    @Override
    public int hashCode() {
        if (r()) {
            return n().hashCode() ^ o().hashCode();
        }
        return ~(n().hashCode() ^ o().hashCode());
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        y0Var.a(this.b);
        if (this.c) {
            y0Var.a(u0.z(true));
        }
        y0Var.a(this.d);
        return new aq1(y0Var);
    }

    public l1 n() {
        return this.b;
    }

    public m1 o() {
        return this.d;
    }

    public x0 q() {
        return m(this);
    }

    public boolean r() {
        return this.c;
    }

    public bk3(l1 l1Var, boolean z2, byte[] bArr) {
        this(l1Var, z2, new wp1(ci.f(bArr)));
    }

    public bk3(s1 s1Var) {
        x0 x0VarA;
        if (s1Var.size() == 2) {
            this.b = l1.D(s1Var.A(0));
            this.c = false;
            x0VarA = s1Var.A(1);
        } else {
            if (s1Var.size() != 3) {
                throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
            }
            this.b = l1.D(s1Var.A(0));
            this.c = u0.y(s1Var.A(1)).A();
            x0VarA = s1Var.A(2);
        }
        this.d = m1.y(x0VarA);
    }
}
