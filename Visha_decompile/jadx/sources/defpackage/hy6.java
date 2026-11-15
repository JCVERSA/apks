package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.c;
import kotlinx.coroutines.e;

public final class hy6 extends c implements e {
    public final e b;
    public final c c;
    public final String d;

    /* JADX WARN: Multi-variable type inference failed */
    public hy6(c cVar, String str) {
        e eVar = cVar instanceof e ? (e) cVar : null;
        this.b = eVar == null ? h12.a() : eVar;
        this.c = cVar;
        this.d = str;
    }

    @Override
    public void dispatch(d dVar, Runnable runnable) {
        this.c.dispatch(dVar, runnable);
    }

    @Override
    public void dispatchYield(d dVar, Runnable runnable) {
        this.c.dispatchYield(dVar, runnable);
    }

    @Override
    public uc2 invokeOnTimeout(long j, Runnable runnable, d dVar) {
        return this.b.invokeOnTimeout(j, runnable, dVar);
    }

    @Override
    public boolean isDispatchNeeded(d dVar) {
        return this.c.isDispatchNeeded(dVar);
    }

    @Override
    public void scheduleResumeAfterDelay(long j, cr0 cr0Var) {
        this.b.scheduleResumeAfterDelay(j, cr0Var);
    }

    @Override
    public String toString() {
        return this.d;
    }
}
