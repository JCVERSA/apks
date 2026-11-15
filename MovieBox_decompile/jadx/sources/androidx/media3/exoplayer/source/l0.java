package androidx.media3.exoplayer.source;

public abstract class l0 extends c {

    private static final Void f12542l = null;

    protected final r f12543k;

    protected l0(r rVar) {
        this.f12543k = rVar;
    }

    @Override
    public final r.b D(Void r10, r.b bVar) {
        return J(bVar);
    }

    @Override
    public final long E(Void r10, long j10, r.b bVar) {
        return L(j10, bVar);
    }

    @Override
    public final int F(Void r10, int i10) {
        return N(i10);
    }

    protected abstract void P(androidx.media3.common.e0 e0Var);

    @Override
    public final void G(Void r10, r rVar, androidx.media3.common.e0 e0Var) {
        P(e0Var);
    }

    protected final void R() {
        I(f12542l, this.f12543k);
    }

    protected void S() {
        R();
    }

    @Override
    public androidx.media3.common.t a() {
        return this.f12543k.a();
    }

    @Override
    public boolean b() {
        return this.f12543k.b();
    }

    @Override
    public androidx.media3.common.e0 c() {
        return this.f12543k.c();
    }

    @Override
    public void n(androidx.media3.common.t tVar) {
        this.f12543k.n(tVar);
    }

    @Override
    protected final void z(w1.n nVar) {
        super.z(nVar);
        S();
    }

    protected r.b J(r.b bVar) {
        return bVar;
    }

    protected int N(int i10) {
        return i10;
    }

    protected long L(long j10, r.b bVar) {
        return j10;
    }
}
