package androidx.compose.foundation.lazy;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/k;", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/k;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.lazy.LazyListState$scrollToItem$2", f = "LazyListState.kt", l = {}, m = "invokeSuspend")
final class LazyListState$scrollToItem$2 extends SuspendLambda implements Function2<androidx.compose.foundation.gestures.k, Continuation<? super Unit>, Object> {
    final int $index;
    final int $scrollOffset;
    int label;
    final LazyListState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListState$scrollToItem$2(LazyListState lazyListState, int i10, int i11, Continuation<? super LazyListState$scrollToItem$2> continuation) {
        super(2, continuation);
        this.this$0 = lazyListState;
        this.$index = i10;
        this.$scrollOffset = i11;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LazyListState$scrollToItem$2(this.this$0, this.$index, this.$scrollOffset, continuation);
    }

    @Override
    public final Object invoke(androidx.compose.foundation.gestures.k kVar, Continuation<? super Unit> continuation) {
        return ((LazyListState$scrollToItem$2) create(kVar, continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.K(this.$index, this.$scrollOffset, true);
        return Unit.f64096a;
    }
}
