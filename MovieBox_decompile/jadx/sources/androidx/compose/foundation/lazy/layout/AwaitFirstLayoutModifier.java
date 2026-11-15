package androidx.compose.foundation.lazy.layout;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public final class AwaitFirstLayoutModifier implements androidx.compose.ui.layout.b0 {

    private boolean f2646b;

    private Continuation f2647c;

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) throws Throwable {
        AwaitFirstLayoutModifier$waitForFirstLayout$1 awaitFirstLayoutModifier$waitForFirstLayout$1;
        Continuation continuation2;
        if (continuation instanceof AwaitFirstLayoutModifier$waitForFirstLayout$1) {
            awaitFirstLayoutModifier$waitForFirstLayout$1 = (AwaitFirstLayoutModifier$waitForFirstLayout$1) continuation;
            int i10 = awaitFirstLayoutModifier$waitForFirstLayout$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                awaitFirstLayoutModifier$waitForFirstLayout$1.label = i10 - Integer.MIN_VALUE;
            } else {
                awaitFirstLayoutModifier$waitForFirstLayout$1 = new AwaitFirstLayoutModifier$waitForFirstLayout$1(this, continuation);
            }
        } else {
            awaitFirstLayoutModifier$waitForFirstLayout$1 = new AwaitFirstLayoutModifier$waitForFirstLayout$1(this, continuation);
        }
        Object obj = awaitFirstLayoutModifier$waitForFirstLayout$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = awaitFirstLayoutModifier$waitForFirstLayout$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (!this.f2646b) {
                Continuation continuation3 = this.f2647c;
                awaitFirstLayoutModifier$waitForFirstLayout$1.L$0 = this;
                awaitFirstLayoutModifier$waitForFirstLayout$1.L$1 = continuation3;
                awaitFirstLayoutModifier$waitForFirstLayout$1.label = 1;
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.c(awaitFirstLayoutModifier$waitForFirstLayout$1));
                this.f2647c = safeContinuation;
                Object objA = safeContinuation.a();
                if (objA == IntrinsicsKt.f()) {
                    DebugProbesKt.c(awaitFirstLayoutModifier$waitForFirstLayout$1);
                }
                if (objA == objF) {
                    return objF;
                }
                continuation2 = continuation3;
            }
            return Unit.f64096a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        continuation2 = (Continuation) awaitFirstLayoutModifier$waitForFirstLayout$1.L$1;
        ResultKt.b(obj);
        if (continuation2 != null) {
            Result.Companion companion = Result.INSTANCE;
            continuation2.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
        return Unit.f64096a;
    }

    @Override
    public Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override
    public boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override
    public androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override
    public void v(androidx.compose.ui.layout.l lVar) {
        if (this.f2646b) {
            return;
        }
        this.f2646b = true;
        Continuation continuation = this.f2647c;
        if (continuation != null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
        this.f2647c = null;
    }
}
