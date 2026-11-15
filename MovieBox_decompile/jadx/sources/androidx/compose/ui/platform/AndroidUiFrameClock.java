package androidx.compose.ui.platform;

import android.view.Choreographer;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class AndroidUiFrameClock implements androidx.compose.runtime.u0 {

    private final Choreographer f5292a;

    private final AndroidUiDispatcher f5293b;

    static final class a implements Choreographer.FrameCallback {

        final kotlinx.coroutines.n f5294a;

        final AndroidUiFrameClock f5295b;

        final Function1 f5296c;

        a(kotlinx.coroutines.n nVar, AndroidUiFrameClock androidUiFrameClock, Function1 function1) {
            this.f5294a = nVar;
            this.f5295b = androidUiFrameClock;
            this.f5296c = function1;
        }

        @Override
        public final void doFrame(long j10) {
            Object objM453constructorimpl;
            kotlinx.coroutines.n nVar = this.f5294a;
            Function1 function1 = this.f5296c;
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

    public AndroidUiFrameClock(Choreographer choreographer, AndroidUiDispatcher androidUiDispatcher) {
        this.f5292a = choreographer;
        this.f5293b = androidUiDispatcher;
    }

    public final Choreographer a() {
        return this.f5292a;
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return androidx.compose.runtime.u0.a.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return androidx.compose.runtime.u0.a.b(this, key);
    }

    @Override
    public CoroutineContext.Key getKey() {
        return androidx.compose.runtime.t0.a(this);
    }

    @Override
    public Object j(Function1 function1, Continuation continuation) {
        final AndroidUiDispatcher androidUiDispatcher = this.f5293b;
        if (androidUiDispatcher == null) {
            CoroutineContext.Element element = continuation.getContext().get(ContinuationInterceptor.INSTANCE);
            androidUiDispatcher = element instanceof AndroidUiDispatcher ? (AndroidUiDispatcher) element : null;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final a aVar = new a(cancellableContinuationImpl, this, function1);
        if (androidUiDispatcher == null || !Intrinsics.c(androidUiDispatcher.x(), a())) {
            a().postFrameCallback(aVar);
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
                    this.this$0.a().removeFrameCallback(aVar);
                }
            });
        } else {
            androidUiDispatcher.X(aVar);
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
                    androidUiDispatcher.d0(aVar);
                }
            });
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return androidx.compose.runtime.u0.a.c(this, key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return androidx.compose.runtime.u0.a.d(this, coroutineContext);
    }
}
