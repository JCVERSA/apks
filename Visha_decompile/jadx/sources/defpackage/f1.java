package defpackage;

import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1Exception;

public class f1 extends FilterInputStream {
    public final int b;
    public final boolean c;
    public final byte[][] d;

    public f1(InputStream inputStream) {
        this(inputStream, uy9.a(inputStream));
    }

    public static int E(InputStream inputStream, int i) throws IOException {
        int i2 = i & 31;
        if (i2 != 31) {
            return i2;
        }
        int i3 = inputStream.read();
        if (i3 < 31) {
            if (i3 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            throw new IOException("corrupted stream - high tag number < 31 found");
        }
        int i4 = i3 & 127;
        if (i4 == 0) {
            throw new IOException("corrupted stream - invalid high tag number found");
        }
        while ((i3 & 128) != 0) {
            if ((i4 >>> 24) != 0) {
                throw new IOException("Tag number more than 31 bits");
            }
            int i5 = i4 << 7;
            int i6 = inputStream.read();
            if (i6 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            i4 = i5 | (i6 & 127);
            i3 = i6;
        }
        return i4;
    }

    public static p1 e(int i, f72 f72Var, byte[][] bArr) throws IOException {
        try {
            switch (i) {
                case 1:
                    return u0.w(h(f72Var, bArr));
                case 2:
                    return g1.w(f72Var.h());
                case 3:
                    return s0.w(f72Var.h());
                case 4:
                    return m1.w(f72Var.h());
                case 5:
                    return h1.w(f72Var.h());
                case 6:
                    l1.x(f72Var.e());
                    return l1.z(h(f72Var, bArr), true);
                case 7:
                    return k1.w(f72Var.h());
                case 8:
                case 9:
                case 11:
                case 15:
                case 16:
                case 17:
                case 29:
                default:
                    throw new IOException("unknown tag " + i + " encountered");
                case 10:
                    return z0.w(h(f72Var, bArr), true);
                case 12:
                    return b2.w(f72Var.h());
                case 13:
                    r1.w(f72Var.e());
                    return r1.y(h(f72Var, bArr), true);
                case 14:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                    throw new IOException("unsupported tag " + i + " encountered");
                case 18:
                    return i1.w(f72Var.h());
                case 19:
                    return q1.w(f72Var.h());
                case 20:
                    return w1.w(f72Var.h());
                case 21:
                    return g2.w(f72Var.h());
                case 22:
                    return e1.w(f72Var.h());
                case 23:
                    return a2.w(f72Var.h());
                case 24:
                    return c1.z(f72Var.h());
                case 25:
                    return d1.w(f72Var.h());
                case 26:
                    return h2.w(f72Var.h());
                case 27:
                    return b1.w(f72Var.h());
                case 28:
                    return c2.w(f72Var.h());
                case 30:
                    return r0.x(g(f72Var));
            }
        } catch (IllegalArgumentException e) {
            throw new ASN1Exception(e.getMessage(), e);
        } catch (IllegalStateException e2) {
            throw new ASN1Exception(e2.getMessage(), e2);
        }
    }

    public static char[] g(f72 f72Var) throws IOException {
        int iE = f72Var.e();
        if ((iE & 1) != 0) {
            throw new IOException("malformed BMPString encoding encountered");
        }
        int i = iE / 2;
        char[] cArr = new char[i];
        byte[] bArr = new byte[8];
        int i2 = 0;
        int i3 = 0;
        while (iE >= 8) {
            if (fz9.d(f72Var, bArr, 0, 8) != 8) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            cArr[i3] = (char) ((bArr[0] << 8) | (bArr[1] & 255));
            cArr[i3 + 1] = (char) ((bArr[2] << 8) | (bArr[3] & 255));
            cArr[i3 + 2] = (char) ((bArr[4] << 8) | (bArr[5] & 255));
            cArr[i3 + 3] = (char) ((bArr[6] << 8) | (bArr[7] & 255));
            i3 += 4;
            iE -= 8;
        }
        if (iE > 0) {
            if (fz9.d(f72Var, bArr, 0, iE) != iE) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            do {
                int i4 = i2 + 1;
                int i5 = bArr[i2] << 8;
                i2 += 2;
                cArr[i3] = (char) ((bArr[i4] & 255) | i5);
                i3++;
            } while (i2 < iE);
        }
        if (f72Var.e() == 0 && i == i3) {
            return cArr;
        }
        throw new IllegalStateException();
    }

    public static byte[] h(f72 f72Var, byte[][] bArr) throws IOException {
        int iE = f72Var.e();
        if (iE >= bArr.length) {
            return f72Var.h();
        }
        byte[] bArr2 = bArr[iE];
        if (bArr2 == null) {
            bArr2 = new byte[iE];
            bArr[iE] = bArr2;
        }
        f72Var.g(bArr2);
        return bArr2;
    }

    public static int o(InputStream inputStream, int i, boolean z) throws IOException {
        int i2 = inputStream.read();
        if ((i2 >>> 7) == 0) {
            return i2;
        }
        if (128 == i2) {
            return -1;
        }
        if (i2 < 0) {
            throw new EOFException("EOF found when length expected");
        }
        if (255 == i2) {
            throw new IOException("invalid long form definite-length 0xFF");
        }
        int i3 = i2 & 127;
        int i4 = 0;
        int i5 = 0;
        do {
            int i6 = inputStream.read();
            if (i6 < 0) {
                throw new EOFException("EOF found reading length");
            }
            if ((i4 >>> 23) != 0) {
                throw new IOException("long form definite-length more than 31 bits");
            }
            i4 = (i4 << 8) + i6;
            i5++;
        } while (i5 < i3);
        if (i4 < i || z) {
            return i4;
        }
        throw new IOException("corrupted stream - out of bounds length found: " + i4 + " >= " + i);
    }

    public p1 D() {
        int i = read();
        if (i <= 0) {
            if (i != 0) {
                return null;
            }
            throw new IOException("unexpected end-of-contents marker");
        }
        int iE = E(this, i);
        int iN = n();
        if (iN >= 0) {
            try {
                return d(i, iE, iN);
            } catch (IllegalArgumentException e) {
                throw new ASN1Exception("corrupted stream detected", e);
            }
        }
        if ((i & 32) == 0) {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        u1 u1Var = new u1(new hz4(this, this.b), this.b, this.d);
        int i2 = i & 192;
        if (i2 != 0) {
            return u1Var.c(i2, iE);
        }
        if (iE == 3) {
            return h40.a(u1Var);
        }
        if (iE == 4) {
            return k40.a(u1Var);
        }
        if (iE == 8) {
            return pp1.a(u1Var);
        }
        if (iE == 16) {
            return m40.a(u1Var);
        }
        if (iE == 17) {
            return o40.a(u1Var);
        }
        throw new IOException("unknown BER object encountered");
    }

    public p1 F(int i, int i2, boolean z, f72 f72Var) {
        return !z ? y1.A(i, i2, f72Var.h()) : y1.y(i, i2, H(f72Var));
    }

    public y0 G() {
        p1 p1VarD = D();
        if (p1VarD == null) {
            return new y0(0);
        }
        y0 y0Var = new y0();
        do {
            y0Var.a(p1VarD);
            p1VarD = D();
        } while (p1VarD != null);
        return y0Var;
    }

    public y0 H(f72 f72Var) {
        int iE = f72Var.e();
        return iE < 1 ? new y0(0) : new f1(f72Var, iE, this.c, this.d).G();
    }

    public s0 a(y0 y0Var) throws ASN1Exception {
        int iF = y0Var.f();
        s0[] s0VarArr = new s0[iF];
        for (int i = 0; i != iF; i++) {
            x0 x0VarD = y0Var.d(i);
            if (!(x0VarD instanceof s0)) {
                throw new ASN1Exception("unknown object encountered in constructed BIT STRING: " + x0VarD.getClass());
            }
            s0VarArr[i] = (s0) x0VarD;
        }
        return new g40(s0VarArr);
    }

    public m1 b(y0 y0Var) throws ASN1Exception {
        int iF = y0Var.f();
        m1[] m1VarArr = new m1[iF];
        for (int i = 0; i != iF; i++) {
            x0 x0VarD = y0Var.d(i);
            if (!(x0VarD instanceof m1)) {
                throw new ASN1Exception("unknown object encountered in constructed OCTET STRING: " + x0VarD.getClass());
            }
            m1VarArr[i] = (m1) x0VarD;
        }
        return new j40(m1VarArr);
    }

    public p1 d(int i, int i2, int i3) throws IOException {
        f72 f72Var = new f72(this, i3, this.b);
        if ((i & 224) == 0) {
            return e(i2, f72Var, this.d);
        }
        int i4 = i & 192;
        if (i4 != 0) {
            return F(i4, i2, (i & 32) != 0, f72Var);
        }
        if (i2 == 3) {
            return a(H(f72Var));
        }
        if (i2 == 4) {
            return b(H(f72Var));
        }
        if (i2 == 8) {
            return vq1.a(H(f72Var)).D();
        }
        if (i2 == 16) {
            if (f72Var.e() < 1) {
                return vq1.a;
            }
            return this.c ? new dj5(f72Var.h()) : vq1.a(H(f72Var));
        }
        if (i2 == 17) {
            return vq1.b(H(f72Var));
        }
        throw new IOException("unknown tag " + i2 + " encountered");
    }

    public int k() {
        return this.b;
    }

    public int n() {
        return o(this, this.b, false);
    }

    public f1(InputStream inputStream, int i) {
        this(inputStream, i, false);
    }

    public f1(InputStream inputStream, int i, boolean z) {
        this(inputStream, i, z, new byte[11][]);
    }

    public f1(InputStream inputStream, int i, boolean z, byte[][] bArr) {
        super(inputStream);
        this.b = i;
        this.c = z;
        this.d = bArr;
    }

    public f1(InputStream inputStream, boolean z) {
        this(inputStream, uy9.a(inputStream), z);
    }

    public f1(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public f1(byte[] bArr, boolean z) {
        this(new ByteArrayInputStream(bArr), bArr.length, z);
    }
}
