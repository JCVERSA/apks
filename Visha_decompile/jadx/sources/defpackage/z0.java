package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import java.math.BigInteger;

public class z0 extends p1 {
    public static final d2 d = new a(z0.class, 10);
    public static final z0[] e = new z0[12];
    public final byte[] b;
    public final int c;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return z0.w(wp1Var.z(), false);
        }
    }

    public z0(BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.b = bigInteger.toByteArray();
        this.c = 0;
    }

    public static z0 w(byte[] bArr, boolean z) {
        if (bArr.length > 1) {
            return new z0(bArr, z);
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("ENUMERATED has zero length");
        }
        int i = bArr[0] & 255;
        z0[] z0VarArr = e;
        if (i >= z0VarArr.length) {
            return new z0(bArr, z);
        }
        z0 z0Var = z0VarArr[i];
        if (z0Var != null) {
            return z0Var;
        }
        z0 z0Var2 = new z0(bArr, z);
        z0VarArr[i] = z0Var2;
        return z0Var2;
    }

    public static z0 x(Object obj) {
        if (obj == null || (obj instanceof z0)) {
            return (z0) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (z0) d.b((byte[]) obj);
        } catch (Exception e2) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e2.toString());
        }
    }

    @Override
    public int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public boolean m(p1 p1Var) {
        if (p1Var instanceof z0) {
            return ci.b(this.b, ((z0) p1Var).b);
        }
        return false;
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 10, this.b);
    }

    @Override
    public boolean o() {
        return false;
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, this.b.length);
    }

    public BigInteger y() {
        return new BigInteger(this.b);
    }

    public int z() {
        byte[] bArr = this.b;
        int length = bArr.length;
        int i = this.c;
        if (length - i <= 4) {
            return g1.E(bArr, i, -1);
        }
        throw new ArithmeticException("ASN.1 Enumerated out of int range");
    }

    public z0(byte[] bArr, boolean z) {
        if (g1.G(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        if ((bArr[0] & SocketData.CLAZZ_TYPE_END_SOCKET) != 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.b = z ? ci.f(bArr) : bArr;
        this.c = g1.J(bArr);
    }
}
