package defpackage;

import java.math.BigInteger;

public class cn8 extends dj {
    public static final ge0.a e = new ge0.a();
    public static final BigInteger f = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);
    public BigInteger c;
    public BigInteger d;

    public cn8(boolean z, BigInteger bigInteger, BigInteger bigInteger2) {
        this(z, bigInteger, bigInteger2, false);
    }

    public static int c(int i) {
        if (i >= 1536) {
            return 3;
        }
        if (i >= 1024) {
            return 4;
        }
        return i >= 512 ? 7 : 50;
    }

    public static boolean e(BigInteger bigInteger) {
        BigInteger bigInteger2 = f;
        if (bigInteger.bitLength() < bigInteger2.bitLength()) {
            bigInteger2 = bigInteger;
            bigInteger = bigInteger2;
        }
        return !ge0.i(bigInteger, bigInteger2);
    }

    public static BigInteger f(BigInteger bigInteger, boolean z) {
        if (!z) {
            if ((bigInteger.intValue() & 1) == 0) {
                throw new IllegalArgumentException("RSA modulus is even");
            }
            if (qi8.c("org.bouncycastle.rsa.allow_unsafe_mod")) {
                return bigInteger;
            }
            if (qi8.a("org.bouncycastle.rsa.max_size", 16384) < bigInteger.bitLength()) {
                throw new IllegalArgumentException("RSA modulus out of range");
            }
            if (e(bigInteger)) {
                throw new IllegalArgumentException("RSA modulus has a small prime factor");
            }
            int iA = qi8.a("org.bouncycastle.rsa.max_mr_tests", c(bigInteger.bitLength() / 2));
            if (iA > 0 && !af8.b(bigInteger, zl1.d(), iA).d()) {
                throw new IllegalArgumentException("RSA modulus is not composite");
            }
        }
        e.a(bigInteger);
        return bigInteger;
    }

    public BigInteger b() {
        return this.d;
    }

    public BigInteger d() {
        return this.c;
    }

    public cn8(boolean z, BigInteger bigInteger, BigInteger bigInteger2, boolean z2) {
        super(z);
        if (!z && (bigInteger2.intValue() & 1) == 0) {
            throw new IllegalArgumentException("RSA publicExponent is even");
        }
        this.c = e.b(bigInteger) ? bigInteger : f(bigInteger, z2);
        this.d = bigInteger2;
    }
}
