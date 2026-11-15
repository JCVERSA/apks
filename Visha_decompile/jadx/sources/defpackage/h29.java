package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.h;
import kotlinx.coroutines.scheduling.CoroutineScheduler;

public abstract class h29 extends h {
    public final int c;
    public final int d;
    public final long e;
    public final String f;
    public CoroutineScheduler g = b();

    public h29(int i, int i2, long j, String str) {
        this.c = i;
        this.d = i2;
        this.e = j;
        this.f = str;
    }

    public final CoroutineScheduler b() {
        return new CoroutineScheduler(this.c, this.d, this.e, this.f);
    }

    @Override
    public void dispatch(d dVar, Runnable runnable) {
        CoroutineScheduler.n(this.g, runnable, false, false, 6, null);
    }

    @Override
    public void dispatchYield(d dVar, Runnable runnable) {
        CoroutineScheduler.n(this.g, runnable, false, true, 2, null);
    }

    public final void k(Runnable runnable, boolean z, boolean z2) {
        this.g.k(runnable, z, z2);
    }
}
