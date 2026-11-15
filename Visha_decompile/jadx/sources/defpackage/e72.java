package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.a;

public class e72 extends a implements d72 {
    public e72(d dVar, boolean z) {
        super(dVar, true, z);
    }

    public static Object V(e72 e72Var, wh1 wh1Var) throws Throwable {
        Object objAwaitInternal = e72Var.awaitInternal(wh1Var);
        z45.f();
        return objAwaitInternal;
    }

    @Override
    public Object d() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override
    public ua9 n() {
        ua9 onAwaitInternal = getOnAwaitInternal();
        y45.h(onAwaitInternal, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.DeferredCoroutine>");
        return onAwaitInternal;
    }

    @Override
    public Object o(wh1 wh1Var) {
        return V(this, wh1Var);
    }
}
