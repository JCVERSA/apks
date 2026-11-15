package defpackage;

import kotlin.coroutines.d;

public final class fh8 extends ts0 implements gh8 {
    public fh8(d dVar, ps0 ps0Var) {
        super(dVar, ps0Var, true, true);
    }

    @Override
    public void onCompleted(zfb zfbVar) {
        bc9.a.a(W(), null, 1, null);
    }

    @Override
    public bc9 b() {
        return V();
    }

    @Override
    public boolean isActive() {
        return super.isActive();
    }

    @Override
    public void onCancelled(Throwable th, boolean z) {
        if (W().m(th) || z) {
            return;
        }
        kk1.a(getContext(), th);
    }
}
