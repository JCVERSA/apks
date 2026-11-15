package defpackage;

import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.j;

public final class jb1 extends JobSupport implements ib1 {
    public jb1(j jVar) {
        super(true);
        initParentJob(jVar);
    }

    @Override
    public Object d() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override
    public boolean g(Throwable th) {
        return makeCompleting$kotlinx_coroutines_core(new vb1(th, false, 2, null));
    }

    @Override
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    @Override
    public boolean h(Object obj) {
        return makeCompleting$kotlinx_coroutines_core(obj);
    }

    @Override
    public ua9 n() {
        ua9 onAwaitInternal = getOnAwaitInternal();
        y45.h(onAwaitInternal, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.CompletableDeferredImpl>");
        return onAwaitInternal;
    }

    @Override
    public Object o(wh1 wh1Var) throws Throwable {
        Object objAwaitInternal = awaitInternal(wh1Var);
        z45.f();
        return objAwaitInternal;
    }
}
