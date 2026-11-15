package dz;

import java.io.IOException;
import java.math.BigInteger;
import org.apache.commons.compress.archivers.zip.r;
import org.apache.commons.compress.archivers.zip.s;

public abstract class d {

    static final r f59220a = s.a(null);

    static final r f59221b = new a();

    static class a implements r {
        a() {
        }

        @Override
        public String a(byte[] bArr) {
            StringBuilder sb2 = new StringBuilder(bArr.length);
            for (byte b10 : bArr) {
                if (b10 == 0) {
                    break;
                }
                sb2.append((char) (b10 & 255));
            }
            return sb2.toString();
        }
    }

    private static String a(byte[] bArr, int i10, int i11, int i12, byte b10) {
        return "Invalid byte " + ((int) b10) + " at offset " + (i12 - i10) + " in '" + new String(bArr, i10, i11).replaceAll("\u0000", "{NUL}") + "' len=" + i11;
    }

    private static long b(byte[] bArr, int i10, int i11, boolean z10) {
        int i12 = i11 - 1;
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10 + 1, bArr2, 0, i12);
        BigInteger bigInteger = new BigInteger(bArr2);
        if (z10) {
            bigInteger = bigInteger.add(BigInteger.valueOf(-1L)).not();
        }
        if (bigInteger.bitLength() <= 63) {
            long jLongValue = bigInteger.longValue();
            return z10 ? -jLongValue : jLongValue;
        }
        throw new IllegalArgumentException("At offset " + i10 + ", " + i11 + " byte binary number exceeds maximum signed long value");
    }

    private static long c(byte[] bArr, int i10, int i11, boolean z10) {
        if (i11 >= 9) {
            throw new IllegalArgumentException("At offset " + i10 + ", " + i11 + " byte binary number exceeds maximum signed long value");
        }
        long jPow = 0;
        for (int i12 = 1; i12 < i11; i12++) {
            jPow = (jPow << 8) + ((long) (bArr[i10 + i12] & 255));
        }
        if (z10) {
            jPow = (jPow - 1) ^ (((long) Math.pow(2.0d, ((double) (i11 - 1)) * 8.0d)) - 1);
        }
        return z10 ? -jPow : jPow;
    }

    public static boolean d(byte[] bArr, int i10) {
        return bArr[i10] == 1;
    }

    public static String e(byte[] bArr, int i10, int i11) {
        try {
            try {
                return f(bArr, i10, i11, f59220a);
            } catch (IOException unused) {
                return f(bArr, i10, i11, f59221b);
            }
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String f(byte[] bArr, int i10, int i11, r rVar) {
        int i12 = 0;
        for (int i13 = i10; i12 < i11 && bArr[i13] != 0; i13++) {
            i12++;
        }
        if (i12 <= 0) {
            return "";
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10, bArr2, 0, i12);
        return rVar.a(bArr2);
    }

    public static long g(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        if (i11 < 2) {
            throw new IllegalArgumentException("Length " + i11 + " must be at least 2");
        }
        long j10 = 0;
        if (bArr[i10] == 0) {
            return 0L;
        }
        int i13 = i10;
        while (i13 < i12 && bArr[i13] == 32) {
            i13++;
        }
        byte b10 = bArr[i12 - 1];
        while (i13 < i12 && (b10 == 0 || b10 == 32)) {
            b10 = bArr[i12 - 2];
            i12--;
        }
        while (i13 < i12) {
            byte b11 = bArr[i13];
            if (b11 < 48 || b11 > 55) {
                throw new IllegalArgumentException(a(bArr, i10, i11, i13, b11));
            }
            j10 = (j10 << 3) + ((long) (b11 - 48));
            i13++;
        }
        return j10;
    }

    public static long h(byte[] bArr, int i10, int i11) {
        byte b10 = bArr[i10];
        if ((b10 & 128) == 0) {
            return g(bArr, i10, i11);
        }
        boolean z10 = b10 == -1;
        return i11 < 9 ? c(bArr, i10, i11, z10) : b(bArr, i10, i11, z10);
    }

    public static boolean i(byte[] bArr) {
        long jG = g(bArr, 148, 8);
        long j10 = 0;
        long j11 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            if (148 <= i10 && i10 < 156) {
                b10 = 32;
            }
            j10 += (long) (b10 & 255);
            j11 += (long) b10;
        }
        return jG == j10 || jG == j11;
    }
}
