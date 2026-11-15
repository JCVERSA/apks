package defpackage;

public abstract class d2 extends z1 {
    public final x1 b;

    public d2(Class cls, int i) {
        super(cls);
        this.b = x1.a(0, i);
    }

    public final p1 a(p1 p1Var) {
        if (this.a.isInstance(p1Var)) {
            return p1Var;
        }
        throw new IllegalStateException("unexpected object: " + p1Var.getClass().getName());
    }

    public final p1 b(byte[] bArr) {
        return a(p1.t(bArr));
    }

    public p1 c(s1 s1Var) {
        throw new IllegalStateException("unexpected implicit constructed encoding");
    }

    public p1 d(wp1 wp1Var) {
        throw new IllegalStateException("unexpected implicit primitive encoding");
    }

    public final p1 e(y1 y1Var, boolean z) {
        return a(f2.a(y1Var).D(z, this));
    }
}
