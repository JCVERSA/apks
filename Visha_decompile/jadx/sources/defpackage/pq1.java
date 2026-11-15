package defpackage;

import java.math.BigInteger;

public class pq1 extends lq1 {
    public static final BigInteger e = BigInteger.valueOf(1);
    public static final BigInteger f = BigInteger.valueOf(2);
    public BigInteger d;

    public pq1(BigInteger bigInteger, nq1 nq1Var) {
        super(false, nq1Var);
        this.d = e(bigInteger, nq1Var);
    }

    public static int d(BigInteger bigInteger, BigInteger bigInteger2) {
        int iBitLength = bigInteger2.bitLength();
        int[] iArrQ = vy6.q(iBitLength, bigInteger);
        int[] iArrQ2 = vy6.q(iBitLength, bigInteger2);
        int length = iArrQ2.length;
        int i = 0;
        while (true) {
            int i2 = iArrQ[0];
            if (i2 == 0) {
                vy6.H(length, iArrQ, 0);
            } else {
                int iB = c35.b(i2);
                if (iB > 0) {
                    vy6.F(length, iArrQ, iB, 0);
                    int i3 = iArrQ2[0];
                    i ^= (iB << 1) & (i3 ^ (i3 >>> 1));
                }
                int iJ = vy6.j(length, iArrQ, iArrQ2);
                if (iJ == 0) {
                    break;
                }
                if (iJ < 0) {
                    i ^= iArrQ[0] & iArrQ2[0];
                    int[] iArr = iArrQ2;
                    iArrQ2 = iArrQ;
                    iArrQ = iArr;
                }
                while (true) {
                    int i4 = length - 1;
                    if (iArrQ[i4] != 0) {
                        break;
                    }
                    length = i4;
                }
                vy6.P(length, iArrQ, iArrQ2, iArrQ);
            }
        }
        if (vy6.z(length, iArrQ2)) {
            return 1 - (i & 2);
        }
        return 0;
    }

    public BigInteger c() {
        return this.d;
    }

    public final BigInteger e(BigInteger bigInteger, nq1 nq1Var) {
        if (bigInteger == null) {
            throw new NullPointerException("y value cannot be null");
        }
        BigInteger bigIntegerF = nq1Var.f();
        BigInteger bigInteger2 = f;
        if (bigInteger.compareTo(bigInteger2) < 0 || bigInteger.compareTo(bigIntegerF.subtract(bigInteger2)) > 0) {
            throw new IllegalArgumentException("invalid DH public key");
        }
        BigInteger bigIntegerG = nq1Var.g();
        if (bigIntegerG == null) {
            return bigInteger;
        }
        if (bigIntegerF.testBit(0) && bigIntegerF.bitLength() - 1 == bigIntegerG.bitLength() && bigIntegerF.shiftRight(1).equals(bigIntegerG)) {
            if (1 == d(bigInteger, bigIntegerF)) {
                return bigInteger;
            }
        } else if (e.equals(bigInteger.modPow(bigIntegerG, bigIntegerF))) {
            return bigInteger;
        }
        throw new IllegalArgumentException("Y value does not appear to be in correct group");
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof pq1) && ((pq1) obj).c().equals(this.d) && super.equals(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode() ^ this.d.hashCode();
    }
}
