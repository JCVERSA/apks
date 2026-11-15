package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

public class v73 extends j1 {
    public g1 b;
    public g1 c;

    public v73(s1 s1Var) {
        Enumeration enumerationB = s1Var.B();
        this.b = (g1) enumerationB.nextElement();
        this.c = (g1) enumerationB.nextElement();
    }

    public static v73 n(Object obj) {
        if (obj instanceof v73) {
            return (v73) obj;
        }
        if (obj != null) {
            return new v73(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(this.b);
        y0Var.a(this.c);
        return new aq1(y0Var);
    }

    public BigInteger m() {
        return this.c.z();
    }

    public BigInteger o() {
        return this.b.z();
    }

    public v73(BigInteger bigInteger, BigInteger bigInteger2) {
        this.b = new g1(bigInteger);
        this.c = new g1(bigInteger2);
    }
}
