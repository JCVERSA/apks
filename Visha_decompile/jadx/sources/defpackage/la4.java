package defpackage;

import java.math.BigInteger;

public class la4 implements cw0 {
    public BigInteger b;
    public BigInteger c;
    public BigInteger d;

    public la4(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.b = bigInteger;
        this.c = bigInteger2;
        this.d = bigInteger3;
    }

    public BigInteger a() {
        return this.d;
    }

    public BigInteger b() {
        return this.b;
    }

    public BigInteger c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof la4)) {
            return false;
        }
        la4 la4Var = (la4) obj;
        return la4Var.b().equals(this.b) && la4Var.c().equals(this.c) && la4Var.a().equals(this.d);
    }

    public int hashCode() {
        return this.d.hashCode() ^ (this.b.hashCode() ^ this.c.hashCode());
    }
}
