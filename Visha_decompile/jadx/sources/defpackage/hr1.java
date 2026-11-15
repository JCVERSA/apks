package defpackage;

import java.math.BigInteger;

public class hr1 implements cw0 {
    public BigInteger b;
    public BigInteger c;
    public BigInteger d;
    public lr1 e;

    public hr1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.b = bigInteger3;
        this.d = bigInteger;
        this.c = bigInteger2;
    }

    public BigInteger a() {
        return this.b;
    }

    public BigInteger b() {
        return this.d;
    }

    public BigInteger c() {
        return this.c;
    }

    public lr1 d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hr1)) {
            return false;
        }
        hr1 hr1Var = (hr1) obj;
        return hr1Var.b().equals(this.d) && hr1Var.c().equals(this.c) && hr1Var.a().equals(this.b);
    }

    public int hashCode() {
        return a().hashCode() ^ (b().hashCode() ^ c().hashCode());
    }

    public hr1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, lr1 lr1Var) {
        this.b = bigInteger3;
        this.d = bigInteger;
        this.c = bigInteger2;
        this.e = lr1Var;
    }
}
