package defpackage;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;

public class kq1 extends DHParameterSpec {
    public final BigInteger a;
    public final BigInteger b;
    public final int c;
    public rq1 d;

    public kq1(nq1 nq1Var) {
        this(nq1Var.f(), nq1Var.g(), nq1Var.b(), nq1Var.c(), nq1Var.e(), nq1Var.d());
        this.d = nq1Var.h();
    }

    public nq1 a() {
        return new nq1(getP(), getG(), this.a, this.c, getL(), this.b, this.d);
    }

    public BigInteger b() {
        return this.a;
    }

    public kq1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, 0, i);
    }

    public kq1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i, int i2) {
        super(bigInteger, bigInteger3, i2);
        this.a = bigInteger2;
        this.b = bigInteger4;
        this.c = i;
    }
}
