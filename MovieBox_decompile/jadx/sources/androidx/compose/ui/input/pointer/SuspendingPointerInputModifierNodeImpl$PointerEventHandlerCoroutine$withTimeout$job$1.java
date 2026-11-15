package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "R", "Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1", f = "SuspendingPointerInputFilter.kt", l = {774, 775}, m = "invokeSuspend")
final class SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final long $timeMillis;
    int label;
    final SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1(long j10, SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine, Continuation<? super SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1> continuation) {
        super(2, continuation);
        this.$timeMillis = j10;
        this.this$0 = pointerEventHandlerCoroutine;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1(this.$timeMillis, this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    @Override
    public final Object invokeSuspend(Object obj) {
        kotlinx.coroutines.n nVar;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            nVar = this.this$0.f4659c;
            if (nVar != null) {
                Result.Companion companion = Result.INSTANCE;
                nVar.resumeWith(Result.m453constructorimpl(ResultKt.a(new PointerEventTimeoutCancellationException(this.$timeMillis))));
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        long j10 = this.$timeMillis - 1;
        this.label = 1;
        if (u0.a(j10, this) == objF) {
            return objF;
        }
        this.label = 2;
        if (u0.a(1L, this) == objF) {
            return objF;
        }
        nVar = this.this$0.f4659c;
        if (nVar != null) {
            Result.Companion companion2 = Result.INSTANCE;
            nVar.resumeWith(Result.m453constructorimpl(ResultKt.a(new PointerEventTimeoutCancellationException(this.$timeMillis))));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
