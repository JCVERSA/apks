package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

public class tw2 extends j1 {
    public final g1 b;
    public final g1 c;
    public final g1 d;
    public final g1 e;
    public final enb f;

    public tw2(s1 s1Var) {
        if (s1Var.size() < 3 || s1Var.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        Enumeration enumerationB = s1Var.B();
        this.b = g1.y(enumerationB.nextElement());
        this.c = g1.y(enumerationB.nextElement());
        this.d = g1.y(enumerationB.nextElement());
        x0 x0VarP = p(enumerationB);
        if (x0VarP == null || !(x0VarP instanceof g1)) {
            this.e = null;
        } else {
            this.e = g1.y(x0VarP);
            x0VarP = p(enumerationB);
        }
        if (x0VarP != null) {
            this.f = enb.m(x0VarP.j());
        } else {
            this.f = null;
        }
    }

    public static tw2 n(Object obj) {
        if (obj instanceof tw2) {
            return (tw2) obj;
        }
        if (obj != null) {
            return new tw2(s1.z(obj));
        }
        return null;
    }

    public static x0 p(Enumeration enumeration) {
        if (enumeration.hasMoreElements()) {
            return (x0) enumeration.nextElement();
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(5);
        y0Var.a(this.b);
        y0Var.a(this.c);
        y0Var.a(this.d);
        g1 g1Var = this.e;
        if (g1Var != null) {
            y0Var.a(g1Var);
        }
        enb enbVar = this.f;
        if (enbVar != null) {
            y0Var.a(enbVar);
        }
        return new aq1(y0Var);
    }

    public BigInteger m() {
        return this.c.z();
    }

    public BigInteger o() {
        g1 g1Var = this.e;
        if (g1Var == null) {
            return null;
        }
        return g1Var.z();
    }

    public BigInteger q() {
        return this.b.z();
    }

    public BigInteger r() {
        return this.d.z();
    }

    public enb s() {
        return this.f;
    }

    public tw2(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, enb enbVar) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.b = new g1(bigInteger);
        this.c = new g1(bigInteger2);
        this.d = new g1(bigInteger3);
        this.e = bigInteger4 != null ? new g1(bigInteger4) : null;
        this.f = enbVar;
    }
}
