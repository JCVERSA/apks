package defpackage;

import com.hunantv.media.drm.IDrmSession;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.mozilla.classfile.ByteCode;

public abstract class af8 {
    public static final BigInteger a = BigInteger.valueOf(1);
    public static final BigInteger b = BigInteger.valueOf(2);
    public static final BigInteger c = BigInteger.valueOf(3);

    public static class a {
        public boolean a;
        public BigInteger b;

        public a(boolean z, BigInteger bigInteger) {
            this.a = z;
            this.b = bigInteger;
        }

        public static a e() {
            return new a(false, null);
        }

        public static a f() {
            return new a(true, null);
        }

        public static a g(BigInteger bigInteger) {
            return new a(true, bigInteger);
        }

        public boolean d() {
            return this.a;
        }
    }

    public static void a(BigInteger bigInteger, String str) {
        if (bigInteger == null || bigInteger.signum() < 1 || bigInteger.bitLength() < 2) {
            throw new IllegalArgumentException("'" + str + "' must be non-null and >= 2");
        }
    }

    public static a b(BigInteger bigInteger, SecureRandom secureRandom, int i) {
        boolean z;
        BigInteger bigIntegerModPow;
        a(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (i < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return a.e();
        }
        if (!bigInteger.testBit(0)) {
            return a.g(b);
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(a);
        BigInteger bigIntegerSubtract2 = bigInteger.subtract(b);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        BigInteger bigIntegerShiftRight = bigIntegerSubtract.shiftRight(lowestSetBit);
        for (int i2 = 0; i2 < i; i2++) {
            BigInteger bigIntegerE = ge0.e(b, bigIntegerSubtract2, secureRandom);
            BigInteger bigIntegerGcd = bigIntegerE.gcd(bigInteger);
            BigInteger bigInteger2 = a;
            if (bigIntegerGcd.compareTo(bigInteger2) > 0) {
                return a.g(bigIntegerGcd);
            }
            BigInteger bigIntegerModPow2 = bigIntegerE.modPow(bigIntegerShiftRight, bigInteger);
            if (!bigIntegerModPow2.equals(bigInteger2) && !bigIntegerModPow2.equals(bigIntegerSubtract)) {
                int i3 = 1;
                while (true) {
                    if (i3 >= lowestSetBit) {
                        z = false;
                        bigIntegerModPow = bigIntegerModPow2;
                        break;
                    }
                    bigIntegerModPow = bigIntegerModPow2.modPow(b, bigInteger);
                    if (bigIntegerModPow.equals(bigIntegerSubtract)) {
                        z = true;
                        break;
                    }
                    if (bigIntegerModPow.equals(a)) {
                        z = false;
                        break;
                    }
                    i3++;
                    bigIntegerModPow2 = bigIntegerModPow;
                }
                if (!z) {
                    BigInteger bigInteger3 = a;
                    if (!bigIntegerModPow.equals(bigInteger3)) {
                        bigIntegerModPow2 = bigIntegerModPow.modPow(b, bigInteger);
                        if (bigIntegerModPow2.equals(bigInteger3)) {
                            bigIntegerModPow2 = bigIntegerModPow;
                        }
                    }
                    BigInteger bigIntegerGcd2 = bigIntegerModPow2.subtract(bigInteger3).gcd(bigInteger);
                    return bigIntegerGcd2.compareTo(bigInteger3) > 0 ? a.g(bigIntegerGcd2) : a.f();
                }
            }
        }
        return a.e();
    }

    public static boolean c(BigInteger bigInteger) {
        a(bigInteger, "candidate");
        return d(bigInteger);
    }

    public static boolean d(BigInteger bigInteger) {
        int iIntValue = bigInteger.mod(BigInteger.valueOf(223092870)).intValue();
        if (iIntValue % 2 != 0 && iIntValue % 3 != 0 && iIntValue % 5 != 0 && iIntValue % 7 != 0 && iIntValue % 11 != 0 && iIntValue % 13 != 0 && iIntValue % 17 != 0 && iIntValue % 19 != 0 && iIntValue % 23 != 0) {
            int iIntValue2 = bigInteger.mod(BigInteger.valueOf(58642669)).intValue();
            if (iIntValue2 % 29 != 0 && iIntValue2 % 31 != 0 && iIntValue2 % 37 != 0 && iIntValue2 % 41 != 0 && iIntValue2 % 43 != 0) {
                int iIntValue3 = bigInteger.mod(BigInteger.valueOf(600662303)).intValue();
                if (iIntValue3 % 47 != 0 && iIntValue3 % 53 != 0 && iIntValue3 % 59 != 0 && iIntValue3 % 61 != 0 && iIntValue3 % 67 != 0) {
                    int iIntValue4 = bigInteger.mod(BigInteger.valueOf(33984931)).intValue();
                    if (iIntValue4 % 71 != 0 && iIntValue4 % 73 != 0 && iIntValue4 % 79 != 0 && iIntValue4 % 83 != 0) {
                        int iIntValue5 = bigInteger.mod(BigInteger.valueOf(89809099)).intValue();
                        if (iIntValue5 % 89 != 0 && iIntValue5 % 97 != 0 && iIntValue5 % 101 != 0 && iIntValue5 % 103 != 0) {
                            int iIntValue6 = bigInteger.mod(BigInteger.valueOf(167375713)).intValue();
                            if (iIntValue6 % 107 != 0 && iIntValue6 % 109 != 0 && iIntValue6 % 113 != 0 && iIntValue6 % 127 != 0) {
                                int iIntValue7 = bigInteger.mod(BigInteger.valueOf(371700317)).intValue();
                                if (iIntValue7 % 131 != 0 && iIntValue7 % 137 != 0 && iIntValue7 % 139 != 0 && iIntValue7 % 149 != 0) {
                                    int iIntValue8 = bigInteger.mod(BigInteger.valueOf(645328247)).intValue();
                                    if (iIntValue8 % 151 != 0 && iIntValue8 % 157 != 0 && iIntValue8 % 163 != 0 && iIntValue8 % 167 != 0) {
                                        int iIntValue9 = bigInteger.mod(BigInteger.valueOf(1070560157)).intValue();
                                        if (iIntValue9 % ByteCode.LRETURN != 0 && iIntValue9 % ByteCode.PUTSTATIC != 0 && iIntValue9 % 181 != 0 && iIntValue9 % ByteCode.ATHROW != 0) {
                                            int iIntValue10 = bigInteger.mod(BigInteger.valueOf(1596463769)).intValue();
                                            if (iIntValue10 % 193 != 0 && iIntValue10 % ByteCode.MULTIANEWARRAY != 0 && iIntValue10 % 199 != 0 && iIntValue10 % IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE != 0) {
                                                return false;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public static boolean e(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, BigInteger bigInteger4) {
        BigInteger bigIntegerModPow = bigInteger4.modPow(bigInteger3, bigInteger);
        if (bigIntegerModPow.equals(a) || bigIntegerModPow.equals(bigInteger2)) {
            return true;
        }
        for (int i2 = 1; i2 < i; i2++) {
            bigIntegerModPow = bigIntegerModPow.modPow(b, bigInteger);
            if (bigIntegerModPow.equals(bigInteger2)) {
                return true;
            }
            if (bigIntegerModPow.equals(a)) {
                return false;
            }
        }
        return false;
    }

    public static boolean f(BigInteger bigInteger, SecureRandom secureRandom, int i) {
        a(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (i < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return true;
        }
        if (!bigInteger.testBit(0)) {
            return false;
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(a);
        BigInteger bigIntegerSubtract2 = bigInteger.subtract(b);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        BigInteger bigIntegerShiftRight = bigIntegerSubtract.shiftRight(lowestSetBit);
        for (int i2 = 0; i2 < i; i2++) {
            if (!e(bigInteger, bigIntegerSubtract, bigIntegerShiftRight, lowestSetBit, ge0.e(b, bigIntegerSubtract2, secureRandom))) {
                return false;
            }
        }
        return true;
    }
}
