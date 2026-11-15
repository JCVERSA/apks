package kotlin;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

final class a extends DeepRecursiveScope implements Continuation {

    private Function3 f64098a;

    private Object f64099b;

    private Continuation f64100c;

    private Object f64101d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Function3 block, Object obj) {
        super(null);
        Intrinsics.h(block, "block");
        this.f64098a = block;
        this.f64099b = obj;
        Intrinsics.f(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f64100c = this;
        this.f64101d = DeepRecursiveKt.f64062a;
    }

    @Override
    public Object a(Object obj, Continuation continuation) {
        Intrinsics.f(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f64100c = continuation;
        this.f64099b = obj;
        Object objF = IntrinsicsKt.f();
        if (objF == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objF;
    }

    public final Object e() {
        while (true) {
            Object obj = this.f64101d;
            Continuation continuation = this.f64100c;
            if (continuation == null) {
                ResultKt.b(obj);
                return obj;
            }
            if (Result.m455equalsimpl0(DeepRecursiveKt.f64062a, obj)) {
                try {
                    Function3 function3 = this.f64098a;
                    Object obj2 = this.f64099b;
                    Object objE = !(function3 instanceof BaseContinuationImpl) ? IntrinsicsKt.e(function3, this, obj2, continuation) : ((Function3) TypeIntrinsics.e(function3, 3)).invoke(this, obj2, continuation);
                    if (objE != IntrinsicsKt.f()) {
                        continuation.resumeWith(Result.m453constructorimpl(objE));
                    }
                } catch (Throwable th2) {
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m453constructorimpl(ResultKt.a(th2)));
                }
            } else {
                this.f64101d = DeepRecursiveKt.f64062a;
                continuation.resumeWith(obj);
            }
        }
    }

    @Override
    public CoroutineContext getF64214a() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override
    public void resumeWith(Object obj) {
        this.f64100c = null;
        this.f64101d = obj;
    }
}
