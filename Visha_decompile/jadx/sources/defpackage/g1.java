package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import java.math.BigInteger;

public class g1 extends p1 {
    public static final d2 d = new a(g1.class, 2);
    public final byte[] b;
    public final int c;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return g1.w(wp1Var.z());
        }
    }

    public g1(long j) {
        this.b = BigInteger.valueOf(j).toByteArray();
        this.c = 0;
    }

    public static int E(byte[] bArr, int i, int i2) {
        int length = bArr.length;
        int iMax = Math.max(i, length - 4);
        int i3 = i2 & bArr[iMax];
        while (true) {
            iMax++;
            if (iMax >= length) {
                return i3;
            }
            i3 = (i3 << 8) | (bArr[iMax] & 255);
        }
    }

    public static boolean G(byte[] bArr) {
        int length = bArr.length;
        if (length == 0) {
            return true;
        }
        if (length != 1) {
            return bArr[0] == (bArr[1] >> 7) && !qi8.c("org.bouncycastle.asn1.allow_unsafe_integer");
        }
        return false;
    }

    public static long H(byte[] bArr, int i, int i2) {
        int length = bArr.length;
        int iMax = Math.max(i, length - 8);
        long j = i2 & bArr[iMax];
        while (true) {
            iMax++;
            if (iMax >= length) {
                return j;
            }
            j = (j << 8) | ((long) (bArr[iMax] & 255));
        }
    }

    public static int J(byte[] bArr) {
        int length = bArr.length - 1;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (bArr[i] != (bArr[i2] >> 7)) {
                break;
            }
            i = i2;
        }
        return i;
    }

    public static g1 w(byte[] bArr) {
        return new g1(bArr, false);
    }

    public static g1 x(y1 y1Var, boolean z) {
        return (g1) d.e(y1Var, z);
    }

    public static g1 y(Object obj) {
        if (obj == null || (obj instanceof g1)) {
            return (g1) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (g1) d.b((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    public BigInteger A() {
        return new BigInteger(this.b);
    }

    public boolean B(int i) {
        byte[] bArr = this.b;
        int length = bArr.length;
        int i2 = this.c;
        return length - i2 <= 4 && E(bArr, i2, -1) == i;
    }

    public boolean C(BigInteger bigInteger) {
        return bigInteger != null && E(this.b, this.c, -1) == bigInteger.intValue() && A().equals(bigInteger);
    }

    public int D() {
        byte[] bArr = this.b;
        int length = bArr.length;
        int i = this.c;
        int i2 = length - i;
        if (i2 > 4 || (i2 == 4 && (bArr[i] & SocketData.CLAZZ_TYPE_END_SOCKET) != 0)) {
            throw new ArithmeticException("ASN.1 Integer out of positive int range");
        }
        return E(bArr, i, 255);
    }

    public int F() {
        byte[] bArr = this.b;
        int length = bArr.length;
        int i = this.c;
        if (length - i <= 4) {
            return E(bArr, i, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public long I() {
        byte[] bArr = this.b;
        int length = bArr.length;
        int i = this.c;
        if (length - i <= 8) {
            return H(bArr, i, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of long range");
    }

    @Override
    public int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public boolean m(p1 p1Var) {
        if (p1Var instanceof g1) {
            return ci.b(this.b, ((g1) p1Var).b);
        }
        return false;
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 2, this.b);
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
        return A().toString();
    }

    public BigInteger z() {
        return new BigInteger(1, this.b);
    }

    public g1(BigInteger bigInteger) {
        this.b = bigInteger.toByteArray();
        this.c = 0;
    }

    public g1(byte[] bArr, boolean z) {
        if (G(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.b = z ? ci.f(bArr) : bArr;
        this.c = J(bArr);
    }
}
