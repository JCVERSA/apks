package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

public class k53 extends j1 {
    public s1 b;

    public k53(int i, BigInteger bigInteger, s0 s0Var, x0 x0Var) {
        byte[] bArrA = ge0.a((i + 7) / 8, bigInteger);
        y0 y0Var = new y0(4);
        y0Var.a(new g1(1L));
        y0Var.a(new wp1(bArrA));
        if (x0Var != null) {
            y0Var.a(new dq1(true, 0, x0Var));
        }
        if (s0Var != null) {
            y0Var.a(new dq1(true, 1, s0Var));
        }
        this.b = new aq1(y0Var);
    }

    public static k53 m(Object obj) {
        if (obj instanceof k53) {
            return (k53) obj;
        }
        if (obj != null) {
            return new k53(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return this.b;
    }

    public BigInteger n() {
        return new BigInteger(1, ((m1) this.b.A(1)).z());
    }

    public final j1 o(int i, int i2) {
        Enumeration enumerationB = this.b.B();
        while (enumerationB.hasMoreElements()) {
            x0 x0Var = (x0) enumerationB.nextElement();
            if (x0Var instanceof y1) {
                y1 y1Var = (y1) x0Var;
                if (y1Var.L(i)) {
                    return i2 < 0 ? y1Var.E().j() : y1Var.C(true, i2);
                }
            }
        }
        return null;
    }

    public s0 p() {
        return (s0) o(1, 3);
    }

    public k53(int i, BigInteger bigInteger, x0 x0Var) {
        this(i, bigInteger, null, x0Var);
    }

    public k53(s1 s1Var) {
        this.b = s1Var;
    }
}
