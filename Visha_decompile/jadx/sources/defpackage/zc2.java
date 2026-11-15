package defpackage;

public final class zc2 extends o95 {
    public final uc2 f;

    public zc2(uc2 uc2Var) {
        this.f = uc2Var;
    }

    @Override
    public boolean u() {
        return false;
    }

    @Override
    public void v(Throwable th) {
        this.f.dispose();
    }
}
