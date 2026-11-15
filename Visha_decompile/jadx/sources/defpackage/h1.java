package defpackage;

public abstract class h1 extends p1 {
    public static final d2 b = new a(h1.class, 5);

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return h1.w(wp1Var.z());
        }
    }

    public static h1 w(byte[] bArr) {
        if (bArr.length == 0) {
            return up1.c;
        }
        throw new IllegalStateException("malformed NULL encoding encountered");
    }

    @Override
    public int hashCode() {
        return -1;
    }

    @Override
    public boolean m(p1 p1Var) {
        return p1Var instanceof h1;
    }

    public String toString() {
        return "NULL";
    }
}
