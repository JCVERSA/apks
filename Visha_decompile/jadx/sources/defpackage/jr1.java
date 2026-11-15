package defpackage;

import java.math.BigInteger;

public class jr1 extends fr1 {
    public static final BigInteger e = BigInteger.valueOf(1);
    public static final BigInteger f = BigInteger.valueOf(2);
    public BigInteger d;

    public jr1(BigInteger bigInteger, hr1 hr1Var) {
        super(false, hr1Var);
        this.d = d(bigInteger, hr1Var);
    }

    public BigInteger c() {
        return this.d;
    }

    public final BigInteger d(BigInteger bigInteger, hr1 hr1Var) {
        if (hr1Var == null) {
            return bigInteger;
        }
        BigInteger bigInteger2 = f;
        if (bigInteger2.compareTo(bigInteger) > 0 || hr1Var.b().subtract(bigInteger2).compareTo(bigInteger) < 0 || !e.equals(bigInteger.modPow(hr1Var.c(), hr1Var.b()))) {
            throw new IllegalArgumentException("y value does not appear to be in correct group");
        }
        return bigInteger;
    }
}
