package defpackage;

import java.math.BigInteger;

public class enb extends j1 {
    public s0 b;
    public g1 c;

    public enb(s1 s1Var) {
        if (s1Var.size() == 2) {
            this.b = s0.z(s1Var.A(0));
            this.c = g1.y(s1Var.A(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
    }

    public static enb m(Object obj) {
        if (obj instanceof enb) {
            return (enb) obj;
        }
        if (obj != null) {
            return new enb(s1.z(obj));
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

    public BigInteger n() {
        return this.c.z();
    }

    public byte[] o() {
        return this.b.x();
    }

    public enb(byte[] bArr, int i) {
        if (bArr == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        this.b = new np1(bArr);
        this.c = new g1(i);
    }
}
