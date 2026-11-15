package defpackage;

import java.io.IOException;

public class u0 extends p1 {
    public static final d2 c = new a(u0.class, 1);
    public static final u0 d = new u0((byte) 0);
    public static final u0 e = new u0((byte) -1);
    public final byte b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return u0.w(wp1Var.z());
        }
    }

    public u0(byte b) {
        this.b = b;
    }

    public static u0 w(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
        }
        byte b = bArr[0];
        if (b != -1) {
            return b != 0 ? new u0(b) : d;
        }
        return e;
    }

    public static u0 x(y1 y1Var, boolean z) {
        return (u0) c.e(y1Var, z);
    }

    public static u0 y(Object obj) {
        if (obj == null || (obj instanceof u0)) {
            return (u0) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (u0) c.b((byte[]) obj);
        } catch (IOException e2) {
            throw new IllegalArgumentException("failed to construct boolean from byte[]: " + e2.getMessage());
        }
    }

    public static u0 z(boolean z) {
        return z ? e : d;
    }

    public boolean A() {
        return this.b != 0;
    }

    @Override
    public int hashCode() {
        return A() ? 1 : 0;
    }

    @Override
    public boolean m(p1 p1Var) {
        return (p1Var instanceof u0) && A() == ((u0) p1Var).A();
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.m(z, 1, this.b);
    }

    @Override
    public boolean o() {
        return false;
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, 1);
    }

    public String toString() {
        return A() ? "TRUE" : "FALSE";
    }

    @Override
    public p1 u() {
        return A() ? e : d;
    }
}
