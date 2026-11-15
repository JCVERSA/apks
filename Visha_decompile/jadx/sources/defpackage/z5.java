package defpackage;

public final class z5 {
    public final e3d a;

    public z5(e3d e3dVar) {
        this.a = e3dVar;
    }

    public static z5 a(s7 s7Var) {
        e3d e3dVar = (e3d) s7Var;
        agd.d(s7Var, "AdSession is null");
        agd.j(e3dVar);
        agd.g(e3dVar);
        z5 z5Var = new z5(e3dVar);
        e3dVar.l().c(z5Var);
        return z5Var;
    }

    public void b() {
        agd.g(this.a);
        agd.i(this.a);
        if (!this.a.p()) {
            try {
                this.a.e();
            } catch (Exception unused) {
            }
        }
        if (this.a.p()) {
            this.a.t();
        }
    }

    public void c() {
        agd.b(this.a);
        agd.i(this.a);
        this.a.u();
    }
}
