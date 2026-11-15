package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/k;", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/k;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$scroll$2", f = "Scrollable.kt", l = {804}, m = "invokeSuspend")
final class ScrollingLogic$scroll$2 extends SuspendLambda implements Function2<k, Continuation<? super Unit>, Object> {
    final Function2<h, Continuation<? super Unit>, Object> $block;
    private Object L$0;
    int label;
    final ScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ScrollingLogic$scroll$2(ScrollingLogic scrollingLogic, Function2<? super h, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super ScrollingLogic$scroll$2> continuation) {
        super(2, continuation);
        this.this$0 = scrollingLogic;
        this.$block = function2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ScrollingLogic$scroll$2 scrollingLogic$scroll$2 = new ScrollingLogic$scroll$2(this.this$0, this.$block, continuation);
        scrollingLogic$scroll$2.L$0 = obj;
        return scrollingLogic$scroll$2;
    }

    @Override
    public final Object invoke(k kVar, Continuation<? super Unit> continuation) {
        return ((ScrollingLogic$scroll$2) create(kVar, continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.this$0.f2391h = (k) this.L$0;
            Function2<h, Continuation<? super Unit>, Object> function2 = this.$block;
            ScrollingLogic.a aVar = this.this$0.f2392i;
            this.label = 1;
            if (function2.invoke(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }
}
