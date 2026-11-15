package androidx.compose.runtime;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public final class PausableMonotonicFrameClock implements u0 {

    private final u0 f3308a;

    private final Latch f3309b = new Latch();

    public PausableMonotonicFrameClock(u0 u0Var) {
        this.f3308a = u0Var;
    }

    public final void a() {
        this.f3309b.d();
    }

    public final void c() {
        this.f3309b.f();
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return u0.a.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return u0.a.b(this, key);
    }

    @Override
    public CoroutineContext.Key getKey() {
        return t0.a(this);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object j(Function1 function1, Continuation continuation) {
        PausableMonotonicFrameClock$withFrameNanos$1 pausableMonotonicFrameClock$withFrameNanos$1;
        PausableMonotonicFrameClock pausableMonotonicFrameClock;
        if (continuation instanceof PausableMonotonicFrameClock$withFrameNanos$1) {
            pausableMonotonicFrameClock$withFrameNanos$1 = (PausableMonotonicFrameClock$withFrameNanos$1) continuation;
            int i10 = pausableMonotonicFrameClock$withFrameNanos$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pausableMonotonicFrameClock$withFrameNanos$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, continuation);
            }
        } else {
            pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, continuation);
        }
        Object objJ = pausableMonotonicFrameClock$withFrameNanos$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pausableMonotonicFrameClock$withFrameNanos$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                function1 = (Function1) pausableMonotonicFrameClock$withFrameNanos$1.L$1;
                pausableMonotonicFrameClock = (PausableMonotonicFrameClock) pausableMonotonicFrameClock$withFrameNanos$1.L$0;
                ResultKt.b(objJ);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objJ);
            }
        }
        ResultKt.b(objJ);
        Latch latch = this.f3309b;
        pausableMonotonicFrameClock$withFrameNanos$1.L$0 = this;
        pausableMonotonicFrameClock$withFrameNanos$1.L$1 = function1;
        pausableMonotonicFrameClock$withFrameNanos$1.label = 1;
        if (latch.c(pausableMonotonicFrameClock$withFrameNanos$1) == objF) {
            return objF;
        }
        pausableMonotonicFrameClock = this;
        u0 u0Var = pausableMonotonicFrameClock.f3308a;
        pausableMonotonicFrameClock$withFrameNanos$1.L$0 = null;
        pausableMonotonicFrameClock$withFrameNanos$1.L$1 = null;
        pausableMonotonicFrameClock$withFrameNanos$1.label = 2;
        objJ = u0Var.j(function1, pausableMonotonicFrameClock$withFrameNanos$1);
        return objJ == objF ? objF : objJ;
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return u0.a.c(this, key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return u0.a.d(this, coroutineContext);
    }
}
