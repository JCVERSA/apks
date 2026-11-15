package defpackage;

public final class c6e {
    public erj a;
    public final e6e b;

    public c6e(e6e e6eVar, d6e d6eVar) {
        this.b = e6eVar;
    }

    public final void a(zhf zhfVar) {
        gpj gpjVar = new gpj();
        gpjVar.J(zhfVar.a);
        gpjVar.m(zhfVar.b);
        gpjVar.E("video/raw");
        this.a = gpjVar.K();
    }

    public final void b(long j, long j2, boolean z) {
        erj erjVarK = this.a;
        if (erjVarK == null) {
            erjVarK = new gpj().K();
        }
        e6e e6eVar = this.b;
        e6eVar.f.a(j2, j, erjVarK, null);
        ubc.a(e6eVar.c.remove());
        throw null;
    }
}
