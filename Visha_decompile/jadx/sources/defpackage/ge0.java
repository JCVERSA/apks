package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Map;
import java.util.WeakHashMap;

public abstract class ge0 {
    public static final BigInteger a = BigInteger.valueOf(0);
    public static final BigInteger b = BigInteger.valueOf(1);
    public static final BigInteger c = BigInteger.valueOf(2);
    public static final BigInteger d = BigInteger.valueOf(3);
    public static final BigInteger e = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);
    public static final int f = BigInteger.valueOf(743).bitLength();

    public static class a {
        public final Map a = new WeakHashMap();
        public final BigInteger[] b = new BigInteger[8];
        public int c = 0;

        public synchronized void a(BigInteger bigInteger) {
            this.a.put(bigInteger, Boolean.TRUE);
            BigInteger[] bigIntegerArr = this.b;
            int i = this.c;
            bigIntegerArr[i] = bigInteger;
            this.c = (i + 1) % bigIntegerArr.length;
        }

        public synchronized boolean b(BigInteger bigInteger) {
            return this.a.containsKey(bigInteger);
        }
    }

    public static byte[] a(int i, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i) {
            return byteArray;
        }
        int i2 = 0;
        if (byteArray[0] == 0 && byteArray.length != 1) {
            i2 = 1;
        }
        int length = byteArray.length - i2;
        if (length > i) {
            throw new IllegalArgumentException("standard length exceeded for value");
        }
        byte[] bArr = new byte[i];
        System.arraycopy(byteArray, i2, bArr, i - length, length);
        return bArr;
    }

    public static byte[] b(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0 || byteArray.length == 1) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    public static byte[] c(int i, SecureRandom secureRandom) {
        if (i < 1) {
            throw new IllegalArgumentException("bitLength must be at least 1");
        }
        int i2 = (i + 7) / 8;
        byte[] bArr = new byte[i2];
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & ((byte) (255 >>> ((i2 * 8) - i))));
        return bArr;
    }

    public static BigInteger d(int i, SecureRandom secureRandom) {
        return new BigInteger(1, c(i, secureRandom));
    }

    public static BigInteger e(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger bigIntegerD;
        int iCompareTo = bigInteger.compareTo(bigInteger2);
        if (iCompareTo >= 0) {
            if (iCompareTo <= 0) {
                return bigInteger;
            }
            throw new IllegalArgumentException("'min' may not be greater than 'max'");
        }
        if (bigInteger.bitLength() > bigInteger2.bitLength() / 2) {
            bigIntegerD = e(a, bigInteger2.subtract(bigInteger), secureRandom);
        } else {
            for (int i = 0; i < 1000; i++) {
                BigInteger bigIntegerD2 = d(bigInteger2.bitLength(), secureRandom);
                if (bigIntegerD2.compareTo(bigInteger) >= 0 && bigIntegerD2.compareTo(bigInteger2) <= 0) {
                    return bigIntegerD2;
                }
            }
            bigIntegerD = d(bigInteger2.subtract(bigInteger).bitLength() - 1, secureRandom);
        }
        return bigIntegerD.add(bigInteger);
    }

    public static BigInteger f(byte[] bArr, int i, int i2) {
        if (i != 0 || i2 != bArr.length) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            bArr = bArr2;
        }
        return new BigInteger(1, bArr);
    }

    public static int g(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 31) {
            return bigInteger.intValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    public static BigInteger h(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        int iBitLength = bigInteger.bitLength();
        int[] iArrQ = vy6.q(iBitLength, bigInteger);
        int[] iArrQ2 = vy6.q(iBitLength, bigInteger2);
        int length = iArrQ.length;
        int[] iArrL = vy6.l(length);
        if (cq6.n(iArrQ, iArrQ2, iArrL) != 0) {
            return vy6.U(length, iArrL);
        }
        throw new ArithmeticException("BigInteger not invertible.");
    }

    public static boolean i(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        if (bigInteger2.equals(b)) {
            return true;
        }
        int iBitLength = bigInteger.bitLength();
        return cq6.p(vy6.q(iBitLength, bigInteger), vy6.q(iBitLength, bigInteger2));
    }
}
