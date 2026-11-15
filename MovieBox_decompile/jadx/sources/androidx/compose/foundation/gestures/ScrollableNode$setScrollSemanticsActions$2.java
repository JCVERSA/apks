package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Ly/g;", "offset", "<anonymous>", "(Ly/g;)Ly/g;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableNode$setScrollSemanticsActions$2", f = "Scrollable.kt", l = {527}, m = "invokeSuspend")
final class ScrollableNode$setScrollSemanticsActions$2 extends SuspendLambda implements Function2<y.g, Continuation<? super y.g>, Object> {
    long J$0;
    int label;
    final ScrollableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableNode$setScrollSemanticsActions$2(ScrollableNode scrollableNode, Continuation<? super ScrollableNode$setScrollSemanticsActions$2> continuation) {
        super(2, continuation);
        this.this$0 = scrollableNode;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ScrollableNode$setScrollSemanticsActions$2 scrollableNode$setScrollSemanticsActions$2 = new ScrollableNode$setScrollSemanticsActions$2(this.this$0, continuation);
        scrollableNode$setScrollSemanticsActions$2.J$0 = ((y.g) obj).v();
        return scrollableNode$setScrollSemanticsActions$2;
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return m33invoke3MmeM6k(((y.g) obj).v(), (Continuation) obj2);
    }

    public final Object m33invoke3MmeM6k(long j10, Continuation<? super y.g> continuation) {
        return ((ScrollableNode$setScrollSemanticsActions$2) create(y.g.d(j10), continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            long j10 = this.J$0;
            ScrollingLogic scrollingLogic = this.this$0.E;
            this.label = 1;
            obj = ScrollableKt.g(scrollingLogic, j10, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
