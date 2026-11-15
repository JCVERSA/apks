package io.appmetrica.analytics.impl;

import androidx.annotation.WorkerThread;

public final class Kf implements InterfaceC2593hg {
    public final Rf a;

    public Kf(Rf rf) {
        this.a = rf;
    }

    @Override
    @WorkerThread
    public final void a(C2468cg c2468cg) {
        Rf rf = this.a;
        Rf.a(rf, c2468cg, (Jf) rf.d.getValue());
    }

    @Override
    @WorkerThread
    public final void a(Throwable th) {
        Rf rf = this.a;
        Rf.a(rf, null, (Jf) rf.d.getValue());
    }
}
