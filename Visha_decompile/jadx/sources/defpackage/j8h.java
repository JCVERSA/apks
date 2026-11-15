package defpackage;

public final class j8h {
    public final im5 a;
    public final long b;
    public final fy0 c;

    public j8h(im5 im5Var, long j, fy0 fy0Var) {
        this.a = im5Var;
        this.c = fy0Var;
        this.b = fy0Var.elapsedRealtime() + j;
    }

    public final boolean a() {
        return this.b < this.c.elapsedRealtime();
    }
}
