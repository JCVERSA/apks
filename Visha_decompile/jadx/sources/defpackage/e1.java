package defpackage;

public abstract class e1 extends p1 implements v1 {
    public static final d2 c = new a(e1.class, 22);
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return e1.w(wp1Var.z());
        }
    }

    public e1(String str, boolean z) {
        if (str == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        if (z && !z(str)) {
            throw new IllegalArgumentException("'string' contains illegal characters");
        }
        this.b = u0a.e(str);
    }

    public static e1 w(byte[] bArr) {
        return new tp1(bArr, false);
    }

    public static e1 x(y1 y1Var, boolean z) {
        return (e1) c.e(y1Var, z);
    }

    public static e1 y(Object obj) {
        if (obj == null || (obj instanceof e1)) {
            return (e1) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof e1) {
                return (e1) p1VarJ;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (e1) c.b((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    public static boolean z(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) > 127) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final String getString() {
        return u0a.b(this.b);
    }

    @Override
    public final int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public final boolean m(p1 p1Var) {
        if (p1Var instanceof e1) {
            return ci.b(this.b, ((e1) p1Var).b);
        }
        return false;
    }

    @Override
    public final void n(o1 o1Var, boolean z) {
        o1Var.o(z, 22, this.b);
    }

    @Override
    public final boolean o() {
        return false;
    }

    @Override
    public final int q(boolean z) {
        return o1.g(z, this.b.length);
    }

    public String toString() {
        return getString();
    }

    public e1(byte[] bArr, boolean z) {
        this.b = z ? ci.f(bArr) : bArr;
    }
}
