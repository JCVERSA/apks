package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class m1 extends p1 implements n1 {
    public static final d2 c = new a(m1.class, 4);
    public static final byte[] d = new byte[0];
    public byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 c(s1 s1Var) {
            return s1Var.E();
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return wp1Var;
        }
    }

    public m1(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.b = bArr;
    }

    public static m1 w(byte[] bArr) {
        return new wp1(bArr);
    }

    public static m1 x(y1 y1Var, boolean z) {
        return (m1) c.e(y1Var, z);
    }

    public static m1 y(Object obj) {
        if (obj == null || (obj instanceof m1)) {
            return (m1) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof m1) {
                return (m1) p1VarJ;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (m1) c.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct OCTET STRING from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public int A() {
        return z().length;
    }

    @Override
    public p1 b() {
        return j();
    }

    @Override
    public InputStream f() {
        return new ByteArrayInputStream(this.b);
    }

    @Override
    public int hashCode() {
        return ci.v(z());
    }

    @Override
    public boolean m(p1 p1Var) {
        if (p1Var instanceof m1) {
            return ci.b(this.b, ((m1) p1Var).b);
        }
        return false;
    }

    public String toString() {
        return "#" + u0a.b(jp4.d(this.b));
    }

    @Override
    public p1 u() {
        return new wp1(this.b);
    }

    @Override
    public p1 v() {
        return new wp1(this.b);
    }

    public byte[] z() {
        return this.b;
    }
}
