package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public abstract class s0 extends p1 implements v1, t0 {
    public static final d2 c = new a(s0.class, 3);
    public static final char[] d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 c(s1 s1Var) {
            return s1Var.C();
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return s0.w(wp1Var.z());
        }
    }

    public s0(byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException("'data' cannot be null");
        }
        if (bArr.length == 0 && i != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i > 7 || i < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.b = ci.D(bArr, (byte) i);
    }

    public static s0 w(byte[] bArr) {
        int length = bArr.length;
        if (length < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        int i = bArr[0] & 255;
        if (i > 0) {
            if (i > 7 || length < 2) {
                throw new IllegalArgumentException("invalid pad bits detected");
            }
            byte b = bArr[length - 1];
            if (b != ((byte) ((255 << i) & b))) {
                return new sq1(bArr, false);
            }
        }
        return new np1(bArr, false);
    }

    public static s0 y(y1 y1Var, boolean z) {
        return (s0) c.e(y1Var, z);
    }

    public static s0 z(Object obj) {
        if (obj == null || (obj instanceof s0)) {
            return (s0) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof s0) {
                return (s0) p1VarJ;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (s0) c.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct BIT STRING from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public byte[] A() {
        byte[] bArr = this.b;
        if (bArr[0] == 0) {
            return ci.q(bArr, 1, bArr.length);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    public int B() {
        int iMin = Math.min(5, this.b.length - 1);
        int i = 0;
        for (int i2 = 1; i2 < iMin; i2++) {
            i |= (255 & this.b[i2]) << ((i2 - 1) * 8);
        }
        if (1 > iMin || iMin >= 5) {
            return i;
        }
        byte[] bArr = this.b;
        return i | ((((byte) (bArr[iMin] & (255 << (bArr[0] & 255)))) & 255) << ((iMin - 1) * 8));
    }

    @Override
    public p1 b() {
        return j();
    }

    @Override
    public InputStream c() {
        byte[] bArr = this.b;
        return new ByteArrayInputStream(bArr, 1, bArr.length - 1);
    }

    @Override
    public String getString() {
        try {
            byte[] encoded = getEncoded();
            StringBuffer stringBuffer = new StringBuffer((encoded.length * 2) + 1);
            stringBuffer.append('#');
            for (int i = 0; i != encoded.length; i++) {
                byte b = encoded[i];
                char[] cArr = d;
                stringBuffer.append(cArr[(b >>> 4) & 15]);
                stringBuffer.append(cArr[b & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            throw new ASN1ParsingException("Internal error encoding BitString: " + e.getMessage(), e);
        }
    }

    @Override
    public int hashCode() {
        byte[] bArr = this.b;
        if (bArr.length < 2) {
            return 1;
        }
        int i = bArr[0] & 255;
        int length = bArr.length - 1;
        return (ci.w(bArr, 0, length) * 257) ^ ((byte) ((255 << i) & bArr[length]));
    }

    @Override
    public int i() {
        return this.b[0] & 255;
    }

    @Override
    public boolean m(p1 p1Var) {
        if (!(p1Var instanceof s0)) {
            return false;
        }
        byte[] bArr = this.b;
        byte[] bArr2 = ((s0) p1Var).b;
        int length = bArr.length;
        if (bArr2.length != length) {
            return false;
        }
        if (length == 1) {
            return true;
        }
        int i = length - 1;
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        int i3 = 255 << (bArr[0] & 255);
        return ((byte) (bArr[i] & i3)) == ((byte) (bArr2[i] & i3));
    }

    public String toString() {
        return getString();
    }

    @Override
    public p1 u() {
        return new np1(this.b, false);
    }

    @Override
    public p1 v() {
        return new sq1(this.b, false);
    }

    public byte[] x() {
        byte[] bArr = this.b;
        if (bArr.length == 1) {
            return m1.d;
        }
        int i = bArr[0] & 255;
        byte[] bArrQ = ci.q(bArr, 1, bArr.length);
        int length = bArrQ.length - 1;
        bArrQ[length] = (byte) (((byte) (255 << i)) & bArrQ[length]);
        return bArrQ;
    }

    public s0(byte[] bArr, boolean z) {
        if (z) {
            if (bArr == null) {
                throw new NullPointerException("'contents' cannot be null");
            }
            if (bArr.length < 1) {
                throw new IllegalArgumentException("'contents' cannot be empty");
            }
            int i = bArr[0] & 255;
            if (i > 0) {
                if (bArr.length < 2) {
                    throw new IllegalArgumentException("zero length data with non-zero pad bits");
                }
                if (i > 7) {
                    throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
                }
            }
        }
        this.b = bArr;
    }
}
