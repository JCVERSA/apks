package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/e0;", "", "<anonymous>", "(Landroidx/compose/ui/input/pointer/e0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.AbstractClickableNode$onPointerEvent$3", f = "Clickable.kt", l = {1042}, m = "invokeSuspend")
final class AbstractClickableNode$onPointerEvent$3 extends SuspendLambda implements Function2<androidx.compose.ui.input.pointer.e0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbstractClickableNode$onPointerEvent$3(AbstractClickableNode abstractClickableNode, Continuation<? super AbstractClickableNode$onPointerEvent$3> continuation) {
        super(2, continuation);
        this.this$0 = abstractClickableNode;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AbstractClickableNode$onPointerEvent$3 abstractClickableNode$onPointerEvent$3 = new AbstractClickableNode$onPointerEvent$3(this.this$0, continuation);
        abstractClickableNode$onPointerEvent$3.L$0 = obj;
        return abstractClickableNode$onPointerEvent$3;
    }

    @Override
    public final Object invoke(androidx.compose.ui.input.pointer.e0 e0Var, Continuation<? super Unit> continuation) {
        return ((AbstractClickableNode$onPointerEvent$3) create(e0Var, continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            androidx.compose.ui.input.pointer.e0 e0Var = (androidx.compose.ui.input.pointer.e0) this.L$0;
            AbstractClickableNode abstractClickableNode = this.this$0;
            this.label = 1;
            if (abstractClickableNode.P1(e0Var, this) == objF) {
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
