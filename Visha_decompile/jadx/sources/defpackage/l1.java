package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import com.transsion.socket.pkgdata.SocketData;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class l1 extends p1 {
    public static final d2 d = new a(l1.class, 6);
    public static final ConcurrentMap e = new ConcurrentHashMap();
    public final byte[] b;
    public String c;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return l1.z(wp1Var.z(), false);
        }
    }

    public static class b {
        public final int a;
        public final byte[] b;

        public b(byte[] bArr) {
            this.a = ci.v(bArr);
            this.b = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return ci.b(this.b, ((b) obj).b);
            }
            return false;
        }

        public int hashCode() {
            return this.a;
        }
    }

    public l1(String str) {
        y(str);
        byte[] bArrI = I(str);
        x(bArrI.length);
        this.b = bArrI;
        this.c = str;
    }

    public static l1 A(byte[] bArr) {
        if (bArr != null) {
            return z(bArr, true);
        }
        throw new NullPointerException("'contents' cannot be null");
    }

    public static l1 C(y1 y1Var, boolean z) {
        if (!z && !y1Var.O() && y1Var.K()) {
            p1 p1VarJ = y1Var.B().j();
            if (!(p1VarJ instanceof l1)) {
                return A(m1.y(p1VarJ).z());
            }
        }
        return (l1) d.e(y1Var, z);
    }

    public static l1 D(Object obj) {
        if (obj == null || (obj instanceof l1)) {
            return (l1) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof l1) {
                return (l1) p1VarJ;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (l1) d.b((byte[]) obj);
            } catch (IOException e2) {
                throw new IllegalArgumentException("failed to construct object identifier from byte[]: " + e2.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static boolean F(String str) {
        char cCharAt;
        if (str.length() < 3 || str.charAt(1) != '.' || (cCharAt = str.charAt(0)) < '0' || cCharAt > '2' || !r1.B(str, 2)) {
            return false;
        }
        if (cCharAt == '2' || str.length() == 3 || str.charAt(3) == '.') {
            return true;
        }
        return (str.length() == 4 || str.charAt(4) == '.') && str.charAt(2) < '4';
    }

    private static String H(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        BigInteger bigIntegerShiftLeft = null;
        long j = 0;
        for (int i = 0; i != bArr.length; i++) {
            byte b2 = bArr[i];
            if (j <= 72057594037927808L) {
                long j2 = j + ((long) (b2 & 127));
                if ((b2 & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                    if (z) {
                        if (j2 < 40) {
                            sb.append('0');
                        } else if (j2 < 80) {
                            sb.append('1');
                            j2 -= 40;
                        } else {
                            sb.append('2');
                            j2 -= 80;
                        }
                        z = false;
                    }
                    sb.append('.');
                    sb.append(j2);
                    j = 0;
                } else {
                    j = j2 << 7;
                }
            } else {
                if (bigIntegerShiftLeft == null) {
                    bigIntegerShiftLeft = BigInteger.valueOf(j);
                }
                BigInteger bigIntegerOr = bigIntegerShiftLeft.or(BigInteger.valueOf(b2 & 127));
                if ((b2 & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                    if (z) {
                        sb.append('2');
                        bigIntegerOr = bigIntegerOr.subtract(BigInteger.valueOf(80L));
                        z = false;
                    }
                    sb.append('.');
                    sb.append(bigIntegerOr);
                    bigIntegerShiftLeft = null;
                    j = 0;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
        }
        return sb.toString();
    }

    private static byte[] I(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m47 m47Var = new m47(str);
        int i = Integer.parseInt(m47Var.b()) * 40;
        String strB = m47Var.b();
        if (strB.length() <= 18) {
            r1.E(byteArrayOutputStream, ((long) i) + Long.parseLong(strB));
        } else {
            r1.F(byteArrayOutputStream, new BigInteger(strB).add(BigInteger.valueOf(i)));
        }
        while (m47Var.a()) {
            String strB2 = m47Var.b();
            if (strB2.length() <= 18) {
                r1.E(byteArrayOutputStream, Long.parseLong(strB2));
            } else {
                r1.F(byteArrayOutputStream, new BigInteger(strB2));
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static l1 J(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > 16385 || !F(str)) {
            return null;
        }
        byte[] bArrI = I(str);
        if (bArrI.length <= 4096) {
            return new l1(bArrI, str);
        }
        return null;
    }

    public static void x(int i) {
        if (i > 4096) {
            throw new IllegalArgumentException("exceeded OID contents length limit");
        }
    }

    public static void y(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > 16385) {
            throw new IllegalArgumentException("exceeded OID contents length limit");
        }
        if (F(str)) {
            return;
        }
        throw new IllegalArgumentException("string " + str + " not a valid OID");
    }

    public static l1 z(byte[] bArr, boolean z) {
        x(bArr.length);
        l1 l1Var = (l1) e.get(new b(bArr));
        if (l1Var != null) {
            return l1Var;
        }
        if (!r1.A(bArr)) {
            throw new IllegalArgumentException("invalid OID contents");
        }
        if (z) {
            bArr = ci.f(bArr);
        }
        return new l1(bArr, null);
    }

    public synchronized String B() {
        try {
            if (this.c == null) {
                this.c = H(this.b);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c;
    }

    public l1 E() {
        b bVar = new b(this.b);
        ConcurrentMap concurrentMap = e;
        l1 l1Var = (l1) concurrentMap.get(bVar);
        if (l1Var != null) {
            return l1Var;
        }
        synchronized (concurrentMap) {
            try {
                if (concurrentMap.containsKey(bVar)) {
                    return (l1) concurrentMap.get(bVar);
                }
                concurrentMap.put(bVar, this);
                return this;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean G(l1 l1Var) {
        byte[] bArr = this.b;
        byte[] bArr2 = l1Var.b;
        int length = bArr2.length;
        return bArr.length > length && ci.a(bArr, 0, length, bArr2, 0, length);
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
        if (p1Var instanceof l1) {
            return ci.b(this.b, ((l1) p1Var).b);
        }
        return false;
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 6, this.b);
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
        return B();
    }

    public l1 w(String str) {
        r1.x(str);
        byte[] bArrD = r1.D(str);
        x(this.b.length + bArrD.length);
        return new l1(ci.k(this.b, bArrD), B() + Consts.DOT + str);
    }

    public l1(byte[] bArr, String str) {
        this.b = bArr;
        this.c = str;
    }
}
