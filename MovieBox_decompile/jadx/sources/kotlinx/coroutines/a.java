package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

public abstract class a extends JobSupport implements t1, Continuation, n0 {
    private final CoroutineContext context;

    public a(CoroutineContext coroutineContext, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            initParentJob((t1) coroutineContext.get(t1.f65027m1));
        }
        this.context = coroutineContext.plus(this);
    }

    public static void getContext$annotations() {
    }

    protected void afterResume(Object obj) {
        afterCompletion(obj);
    }

    @Override
    public String cancellationExceptionMessage() {
        return p0.a(this) + " was cancelled";
    }

    @Override
    public final CoroutineContext getContext() {
        return this.context;
    }

    @Override
    public CoroutineContext getCoroutineContext() {
        return this.context;
    }

    @Override
    public final void handleOnCompletionException$kotlinx_coroutines_core(Throwable th2) {
        k0.a(this.context, th2);
    }

    @Override
    public boolean isActive() {
        return super.isActive();
    }

    @Override
    public String nameString$kotlinx_coroutines_core() {
        String strG = g0.g(this.context);
        if (strG == null) {
            return super.nameString$kotlinx_coroutines_core();
        }
        return '\"' + strG + "\":" + super.nameString$kotlinx_coroutines_core();
    }

    protected void onCancelled(Throwable th2, boolean z10) {
    }

    protected void onCompleted(Object obj) {
    }

    @Override
    protected final void onCompletionInternal(Object obj) {
        if (!(obj instanceof b0)) {
            onCompleted(obj);
        } else {
            b0 b0Var = (b0) obj;
            onCancelled(b0Var.f64676a, b0Var.a());
        }
    }

    @Override
    public final void resumeWith(Object obj) {
        Object objMakeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(c0.b(obj));
        if (objMakeCompletingOnce$kotlinx_coroutines_core == x1.f65037b) {
            return;
        }
        afterResume(objMakeCompletingOnce$kotlinx_coroutines_core);
    }

    public final <R> void start(CoroutineStart coroutineStart, R r10, Function2<? super R, ? super Continuation<Object>, ? extends Object> function2) {
        coroutineStart.invoke(function2, r10, this);
    }
}
