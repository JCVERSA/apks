package defpackage;

public class sqc extends j1 {
    public final m1 b;
    public t43 c;
    public i53 d;

    public sqc(t43 t43Var, m1 m1Var) {
        this(t43Var, m1Var.z());
    }

    @Override
    public p1 j() {
        return this.b;
    }

    public synchronized i53 m() {
        try {
            if (this.d == null) {
                this.d = this.c.i(this.b.z()).y();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.d;
    }

    public sqc(t43 t43Var, byte[] bArr) {
        this.c = t43Var;
        this.b = new wp1(ci.f(bArr));
    }

    public sqc(i53 i53Var, boolean z) {
        this.d = i53Var.y();
        this.b = new wp1(i53Var.l(z));
    }
}
