package defpackage;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;

public class w73 implements AlgorithmParameterSpec {
    public BigInteger a;
    public BigInteger b;

    public w73(BigInteger bigInteger, BigInteger bigInteger2) {
        this.a = bigInteger;
        this.b = bigInteger2;
    }

    public BigInteger a() {
        return this.b;
    }

    public BigInteger b() {
        return this.a;
    }
}
