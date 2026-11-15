package androidx.compose.runtime;

import android.view.Choreographer;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;

final class DefaultChoreographerFrameClock implements u0 {

    public static final DefaultChoreographerFrameClock f3289a = new DefaultChoreographerFrameClock();

    private static final Choreographer f3290b = (Choreographer) kotlinx.coroutines.i.e(kotlinx.coroutines.y0.c().r(), new DefaultChoreographerFrameClock$choreographer$1(null));

    static final class a implements Choreographer.FrameCallback {

        final kotlinx.coroutines.n f3291a;

        final Function1 f3292b;

        a(kotlinx.coroutines.n nVar, Function1 function1) {
            this.f3291a = nVar;
            this.f3292b = function1;
        }

        @Override
        public final void doFrame(long j10) {
            Object objM453constructorimpl;
            kotlinx.coroutines.n nVar = this.f3291a;
            DefaultChoreographerFrameClock defaultChoreographerFrameClock = DefaultChoreographerFrameClock.f3289a;
            Function1 function1 = this.f3292b;
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(function1.invoke(Long.valueOf(j10)));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            nVar.resumeWith(objM453constructorimpl);
        }
    }

    private DefaultChoreographerFrameClock() {
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

    @Override
    public Object j(Function1 function1, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final a aVar = new a(cancellableContinuationImpl, function1);
        f3290b.postFrameCallback(aVar);
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f64096a;
            }

            public final void invoke(Throwable th2) {
                DefaultChoreographerFrameClock.f3290b.removeFrameCallback(aVar);
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
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
