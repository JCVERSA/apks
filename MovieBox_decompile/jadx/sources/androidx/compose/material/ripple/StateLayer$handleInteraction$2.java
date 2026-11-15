package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.material.ripple.StateLayer$handleInteraction$2", f = "Ripple.kt", l = {503}, m = "invokeSuspend")
final class StateLayer$handleInteraction$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final androidx.compose.animation.core.g $outgoingAnimationSpec;
    int label;
    final StateLayer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StateLayer$handleInteraction$2(StateLayer stateLayer, androidx.compose.animation.core.g gVar, Continuation<? super StateLayer$handleInteraction$2> continuation) {
        super(2, continuation);
        this.this$0 = stateLayer;
        this.$outgoingAnimationSpec = gVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StateLayer$handleInteraction$2(this.this$0, this.$outgoingAnimationSpec, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Animatable animatable = this.this$0.f3182c;
            Float fC = Boxing.c(0.0f);
            androidx.compose.animation.core.g gVar = this.$outgoingAnimationSpec;
            this.label = 1;
            if (Animatable.f(animatable, fC, gVar, null, null, this, 12, null) == objF) {
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
        return ((StateLayer$handleInteraction$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
