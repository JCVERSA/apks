package defpackage;

import kotlinx.coroutines.j;

public final class wv0 extends o95 implements vv0 {
    public final xv0 f;

    public wv0(xv0 xv0Var) {
        this.f = xv0Var;
    }

    @Override
    public boolean a(Throwable th) {
        return t().childCancelled(th);
    }

    @Override
    public j getParent() {
        return t();
    }

    @Override
    public boolean u() {
        return true;
    }

    @Override
    public void v(Throwable th) {
        this.f.parentCancelled(t());
    }
}
