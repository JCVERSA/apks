package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

public class fn8 extends j1 {
    public BigInteger b;
    public BigInteger c;

    public fn8(s1 s1Var) {
        if (s1Var.size() == 2) {
            Enumeration enumerationB = s1Var.B();
            this.b = g1.y(enumerationB.nextElement()).z();
            this.c = g1.y(enumerationB.nextElement()).z();
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
    }

    public static fn8 m(Object obj) {
        if (obj instanceof fn8) {
            return (fn8) obj;
        }
        if (obj != null) {
            return new fn8(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(new g1(n()));
        y0Var.a(new g1(o()));
        return new aq1(y0Var);
    }

    public BigInteger n() {
        return this.b;
    }

    public BigInteger o() {
        return this.c;
    }

    public fn8(BigInteger bigInteger, BigInteger bigInteger2) {
        this.b = bigInteger;
        this.c = bigInteger2;
    }
}
