package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class r1 extends p1 {
    public static final d2 d = new a(r1.class, 13);
    public static final ConcurrentMap e = new ConcurrentHashMap();
    public final byte[] b;
    public String c;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return r1.y(wp1Var.z(), false);
        }
    }

    public r1(byte[] bArr, String str) {
        this.b = bArr;
        this.c = str;
    }

    public static boolean A(byte[] bArr) {
        if (bArr.length < 1) {
            return false;
        }
        boolean z = true;
        for (int i = 0; i < bArr.length; i++) {
            if (z && (bArr[i] & 255) == 128) {
                return false;
            }
            z = (bArr[i] & SocketData.CLAZZ_TYPE_END_SOCKET) == 0;
        }
        return z;
    }

    public static boolean B(String str, int i) {
        int length = str.length();
        int i2 = 0;
        while (true) {
            int i3 = length - 1;
            if (i3 < i) {
                return i2 != 0 && (i2 <= 1 || str.charAt(length) != '0');
            }
            char cCharAt = str.charAt(i3);
            if (cCharAt == '.') {
                if (i2 == 0 || (i2 > 1 && str.charAt(length) == '0')) {
                    return false;
                }
                i2 = 0;
            } else {
                if ('0' > cCharAt || cCharAt > '9') {
                    return false;
                }
                i2++;
            }
            length = i3;
        }
    }

    public static String C(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        BigInteger bigIntegerShiftLeft = null;
        long j = 0;
        for (int i = 0; i != bArr.length; i++) {
            byte b = bArr[i];
            if (j <= 72057594037927808L) {
                long j2 = j + ((long) (b & 127));
                if ((b & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                    if (z) {
                        z = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append(j2);
                    j = 0;
                } else {
                    j = j2 << 7;
                }
            } else {
                if (bigIntegerShiftLeft == null) {
                    bigIntegerShiftLeft = BigInteger.valueOf(j);
                }
                BigInteger bigIntegerOr = bigIntegerShiftLeft.or(BigInteger.valueOf(b & 127));
                if ((b & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                    if (z) {
                        z = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append(bigIntegerOr);
                    bigIntegerShiftLeft = null;
                    j = 0;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
        }
        return stringBuffer.toString();
    }

    public static byte[] D(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m47 m47Var = new m47(str);
        while (m47Var.a()) {
            String strB = m47Var.b();
            if (strB.length() <= 18) {
                E(byteArrayOutputStream, Long.parseLong(strB));
            } else {
                F(byteArrayOutputStream, new BigInteger(strB));
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void E(ByteArrayOutputStream byteArrayOutputStream, long j) {
        byte[] bArr = new byte[9];
        int i = 8;
        bArr[8] = (byte) (((int) j) & 127);
        while (j >= 128) {
            j >>= 7;
            i--;
            bArr[i] = (byte) (((int) j) | 128);
        }
        byteArrayOutputStream.write(bArr, i, 9 - i);
    }

    public static void F(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int iBitLength = (bigInteger.bitLength() + 6) / 7;
        if (iBitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[iBitLength];
        int i = iBitLength - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            bArr[i2] = (byte) (bigInteger.intValue() | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i] = (byte) (bArr[i] & 127);
        byteArrayOutputStream.write(bArr, 0, iBitLength);
    }

    public static void w(int i) {
        if (i > 4096) {
            throw new IllegalArgumentException("exceeded relative OID contents length limit");
        }
    }

    public static void x(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > 16383) {
            throw new IllegalArgumentException("exceeded relative OID contents length limit");
        }
        if (B(str, 0)) {
            return;
        }
        throw new IllegalArgumentException("string " + str + " not a valid relative OID");
    }

    public static r1 y(byte[] bArr, boolean z) {
        w(bArr.length);
        r1 r1Var = (r1) e.get(new l1.b(bArr));
        if (r1Var != null) {
            return r1Var;
        }
        if (!A(bArr)) {
            throw new IllegalArgumentException("invalid relative OID contents");
        }
        if (z) {
            bArr = ci.f(bArr);
        }
        return new r1(bArr, null);
    }

    @Override
    public int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public boolean m(p1 p1Var) {
        if (this == p1Var) {
            return true;
        }
        if (p1Var instanceof r1) {
            return ci.b(this.b, ((r1) p1Var).b);
        }
        return false;
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 13, this.b);
    }

    @Override
    public boolean o() {
        return false;
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, this.b.length);
    }

    public String toString() {
        return z();
    }

    public synchronized String z() {
        try {
            if (this.c == null) {
                this.c = C(this.b);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c;
    }
}
