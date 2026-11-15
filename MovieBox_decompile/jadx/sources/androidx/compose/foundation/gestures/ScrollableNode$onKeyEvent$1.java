package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableNode$onKeyEvent$1", f = "Scrollable.kt", l = {477}, m = "invokeSuspend")
final class ScrollableNode$onKeyEvent$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final long $scrollAmount;
    int label;
    final ScrollableNode this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/h;", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/h;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableNode$onKeyEvent$1$1", f = "Scrollable.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<h, Continuation<? super Unit>, Object> {
        final long $scrollAmount;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$scrollAmount = j10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scrollAmount, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(h hVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(hVar, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ((h) this.L$0).b(this.$scrollAmount, androidx.compose.ui.input.nestedscroll.e.f4630a.b());
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableNode$onKeyEvent$1(ScrollableNode scrollableNode, long j10, Continuation<? super ScrollableNode$onKeyEvent$1> continuation) {
        super(2, continuation);
        this.this$0 = scrollableNode;
        this.$scrollAmount = j10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ScrollableNode$onKeyEvent$1(this.this$0, this.$scrollAmount, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            ScrollingLogic scrollingLogic = this.this$0.E;
            MutatePriority mutatePriority = MutatePriority.UserInput;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scrollAmount, null);
            this.label = 1;
            if (scrollingLogic.v(mutatePriority, anonymousClass1, this) == objF) {
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

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ScrollableNode$onKeyEvent$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
