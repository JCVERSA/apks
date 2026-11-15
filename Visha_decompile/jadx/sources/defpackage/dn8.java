package defpackage;

import java.math.BigInteger;

public class dn8 extends cn8 {
    public BigInteger g;
    public BigInteger h;
    public BigInteger i;
    public BigInteger j;
    public BigInteger k;
    public BigInteger l;

    public dn8(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, bigInteger6, bigInteger7, bigInteger8, false);
    }

    public BigInteger g() {
        return this.j;
    }

    public BigInteger h() {
        return this.k;
    }

    public BigInteger i() {
        return this.h;
    }

    public BigInteger j() {
        return this.g;
    }

    public BigInteger k() {
        return this.i;
    }

    public BigInteger l() {
        return this.l;
    }

    public dn8(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8, boolean z) {
        super(true, bigInteger, bigInteger3, z);
        this.g = bigInteger2;
        this.h = bigInteger4;
        this.i = bigInteger5;
        this.j = bigInteger6;
        this.k = bigInteger7;
        this.l = bigInteger8;
    }
}
