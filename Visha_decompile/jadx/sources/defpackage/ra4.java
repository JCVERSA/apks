package defpackage;

import java.math.BigInteger;

public class ra4 extends ha4 {
    public BigInteger d;

    public ra4(BigInteger bigInteger, la4 la4Var) {
        super(false, la4Var);
        this.d = bigInteger;
    }

    public BigInteger c() {
        return this.d;
    }
}
