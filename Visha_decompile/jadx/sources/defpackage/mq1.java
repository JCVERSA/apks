package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

public class mq1 extends j1 {
    public g1 b;
    public g1 c;
    public g1 d;

    public mq1(s1 s1Var) {
        Enumeration enumerationB = s1Var.B();
        this.b = g1.y(enumerationB.nextElement());
        this.c = g1.y(enumerationB.nextElement());
        this.d = enumerationB.hasMoreElements() ? (g1) enumerationB.nextElement() : null;
    }

    public static mq1 n(Object obj) {
        if (obj instanceof mq1) {
            return (mq1) obj;
        }
        if (obj != null) {
            return new mq1(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        y0Var.a(this.b);
        y0Var.a(this.c);
        if (o() != null) {
            y0Var.a(this.d);
        }
        return new aq1(y0Var);
    }

    public BigInteger m() {
        return this.c.z();
    }

    public BigInteger o() {
        g1 g1Var = this.d;
        if (g1Var == null) {
            return null;
        }
        return g1Var.z();
    }

    public BigInteger p() {
        return this.b.z();
    }

    public mq1(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.b = new g1(bigInteger);
        this.c = new g1(bigInteger2);
        this.d = i != 0 ? new g1(i) : null;
    }
}
