package kotlinx.coroutines;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;

public final class q2 extends kotlinx.coroutines.internal.v {

    private final ThreadLocal f64942a;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public q2(CoroutineContext coroutineContext, Continuation continuation) {
        r2 r2Var = r2.f64946a;
        super(coroutineContext.get(r2Var) == null ? coroutineContext.plus(r2Var) : coroutineContext, continuation);
        this.f64942a = new ThreadLocal();
        if (continuation.getContext().get(ContinuationInterceptor.INSTANCE) instanceof i0) {
            return;
        }
        Object objI = kotlinx.coroutines.internal.g0.i(coroutineContext, null);
        kotlinx.coroutines.internal.g0.f(coroutineContext, objI);
        V(coroutineContext, objI);
    }

    public final boolean U() {
        boolean z10 = this.threadLocalIsSet && this.f64942a.get() == null;
        this.f64942a.remove();
        return !z10;
    }

    public final void V(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.f64942a.set(TuplesKt.a(coroutineContext, obj));
    }

    @Override
    protected void afterResume(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f64942a.get();
            if (pair != null) {
                kotlinx.coroutines.internal.g0.f((CoroutineContext) pair.component1(), pair.component2());
            }
            this.f64942a.remove();
        }
        Object objA = c0.a(obj, this.uCont);
        Continuation<Object> continuation = this.uCont;
        CoroutineContext context = continuation.getContext();
        Object objI = kotlinx.coroutines.internal.g0.i(context, null);
        q2 q2VarM = objI != kotlinx.coroutines.internal.g0.f64886a ? g0.m(continuation, context, objI) : null;
        try {
            this.uCont.resumeWith(objA);
            Unit unit = Unit.f64096a;
        } finally {
            if (q2VarM == null || q2VarM.U()) {
                kotlinx.coroutines.internal.g0.f(context, objI);
            }
        }
    }
}
