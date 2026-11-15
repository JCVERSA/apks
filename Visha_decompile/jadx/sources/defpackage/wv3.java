package defpackage;

import java.math.BigInteger;

public abstract class wv3 {
    public static final vv3 a = new ze8(BigInteger.valueOf(2));
    public static final vv3 b = new ze8(BigInteger.valueOf(3));

    public static sc8 a(int[] iArr) {
        if (iArr[0] != 0) {
            throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
        }
        for (int i = 1; i < iArr.length; i++) {
            if (iArr[i] <= iArr[i - 1]) {
                throw new IllegalArgumentException("Polynomial exponents must be monotonically increasing");
            }
        }
        return new rd4(a, new v94(iArr));
    }

    public static vv3 b(BigInteger bigInteger) {
        int iBitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || iBitLength < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (iBitLength < 3) {
            int iG = ge0.g(bigInteger);
            if (iG == 2) {
                return a;
            }
            if (iG == 3) {
                return b;
            }
        }
        return new ze8(bigInteger);
    }
}
