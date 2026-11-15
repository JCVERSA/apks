package defpackage;

public final class iwf implements y5g, b1g {
    public final fy0 b;
    public final kwf c;
    public final enh d;
    public final String e;

    public iwf(fy0 fy0Var, kwf kwfVar, enh enhVar, String str) {
        this.b = fy0Var;
        this.c = kwfVar;
        this.d = enhVar;
        this.e = str;
    }

    @Override
    public final void zza() {
        this.c.e(this.e, this.b.elapsedRealtime());
    }

    @Override
    public final void zzt() {
        fy0 fy0Var = this.b;
        this.c.d(this.d.f, this.e, fy0Var.elapsedRealtime());
    }
}
