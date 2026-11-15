package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

public class gr1 extends j1 {
    public g1 b;
    public g1 c;
    public g1 d;

    public gr1(s1 s1Var) {
        if (s1Var.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        Enumeration enumerationB = s1Var.B();
        this.b = g1.y(enumerationB.nextElement());
        this.c = g1.y(enumerationB.nextElement());
        this.d = g1.y(enumerationB.nextElement());
    }

    public static gr1 n(Object obj) {
        if (obj instanceof gr1) {
            return (gr1) obj;
        }
        if (obj != null) {
            return new gr1(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        y0Var.a(this.b);
        y0Var.a(this.c);
        y0Var.a(this.d);
        return new aq1(y0Var);
    }

    public BigInteger m() {
        return this.d.z();
    }

    public BigInteger o() {
        return this.b.z();
    }

    public BigInteger p() {
        return this.c.z();
    }

    public gr1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.b = new g1(bigInteger);
        this.c = new g1(bigInteger2);
        this.d = new g1(bigInteger3);
    }
}
