package defpackage;

public abstract class j72 extends c92 {
    public final tfc a;

    public j72(tfc tfcVar) {
        y45.j(tfcVar, "delegate");
        this.a = tfcVar;
    }

    @Override
    public tfc b() {
        return this.a;
    }

    @Override
    public String c() {
        return b().b();
    }

    @Override
    public c92 f() {
        c92 c92VarJ = b92.j(b().d());
        y45.i(c92VarJ, "toDescriptorVisibility(delegate.normalize())");
        return c92VarJ;
    }
}
