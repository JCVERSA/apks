package defpackage;

public abstract class b2 extends p1 implements v1 {
    public static final d2 c = new a(b2.class, 12);
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return b2.w(wp1Var.z());
        }
    }

    public b2(String str) {
        this(u0a.h(str), false);
    }

    public static b2 w(byte[] bArr) {
        return new fq1(bArr, false);
    }

    @Override
    public final String getString() {
        return u0a.c(this.b);
    }

    @Override
    public final int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public final boolean m(p1 p1Var) {
        if (p1Var instanceof b2) {
            return ci.b(this.b, ((b2) p1Var).b);
        }
        return false;
    }

    @Override
    public final void n(o1 o1Var, boolean z) {
        o1Var.o(z, 12, this.b);
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

    public b2(byte[] bArr, boolean z) {
        this.b = z ? ci.f(bArr) : bArr;
    }
}
