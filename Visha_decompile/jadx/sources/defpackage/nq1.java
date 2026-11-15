package defpackage;

import java.math.BigInteger;

public class nq1 implements cw0 {
    public BigInteger b;
    public BigInteger c;
    public BigInteger d;
    public BigInteger e;
    public int f;
    public int g;
    public rq1 h;

    public nq1(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public static int a(int i) {
        if (i != 0 && i < 160) {
            return i;
        }
        return 160;
    }

    public BigInteger b() {
        return this.b;
    }

    public BigInteger c() {
        return this.e;
    }

    public int d() {
        return this.g;
    }

    public int e() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof nq1)) {
            return false;
        }
        nq1 nq1Var = (nq1) obj;
        if (g() != null) {
            if (!g().equals(nq1Var.g())) {
                return false;
            }
        } else if (nq1Var.g() != null) {
            return false;
        }
        return nq1Var.f().equals(this.c) && nq1Var.b().equals(this.b);
    }

    public BigInteger f() {
        return this.c;
    }

    public BigInteger g() {
        return this.d;
    }

    public rq1 h() {
        return this.h;
    }

    public int hashCode() {
        return (g() != null ? g().hashCode() : 0) ^ (f().hashCode() ^ b().hashCode());
    }

    public nq1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i) {
        this(bigInteger, bigInteger2, bigInteger3, a(i), i, null, null);
    }

    public nq1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2, BigInteger bigInteger4, rq1 rq1Var) {
        if (i2 != 0) {
            if (i2 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (i2 < i) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (i > bigInteger.bitLength() && !qi8.c("org.bouncycastle.dh.allow_unsafe_p_value")) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.b = bigInteger2;
        this.c = bigInteger;
        this.d = bigInteger3;
        this.f = i;
        this.g = i2;
        this.e = bigInteger4;
        this.h = rq1Var;
    }

    public nq1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, rq1 rq1Var) {
        this(bigInteger, bigInteger2, bigInteger3, 160, 0, bigInteger4, rq1Var);
    }
}
