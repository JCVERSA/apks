package defpackage;

public abstract class g2 extends p1 implements v1 {
    public static final d2 c = new a(g2.class, 21);
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return g2.w(wp1Var.z());
        }
    }

    public g2(byte[] bArr, boolean z) {
        this.b = z ? ci.f(bArr) : bArr;
    }

    public static g2 w(byte[] bArr) {
        return new hq1(bArr, false);
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
        if (p1Var instanceof g2) {
            return ci.b(this.b, ((g2) p1Var).b);
        }
        return false;
    }

    @Override
    public final void n(o1 o1Var, boolean z) {
        o1Var.o(z, 21, this.b);
    }

    @Override
    public final boolean o() {
        return false;
    }

    @Override
    public final int q(boolean z) {
        return o1.g(z, this.b.length);
    }
}
