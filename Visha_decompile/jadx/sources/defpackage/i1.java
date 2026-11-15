package defpackage;

public abstract class i1 extends p1 implements v1 {
    public static final d2 c = new a(i1.class, 18);
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return i1.w(wp1Var.z());
        }
    }

    public i1(byte[] bArr, boolean z) {
        this.b = z ? ci.f(bArr) : bArr;
    }

    public static i1 w(byte[] bArr) {
        return new vp1(bArr, false);
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
        if (p1Var instanceof i1) {
            return ci.b(this.b, ((i1) p1Var).b);
        }
        return false;
    }

    @Override
    public final void n(o1 o1Var, boolean z) {
        o1Var.o(z, 18, this.b);
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
}
