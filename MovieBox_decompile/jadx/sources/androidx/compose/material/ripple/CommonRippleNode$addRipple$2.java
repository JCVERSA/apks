package androidx.compose.material.ripple;

import androidx.compose.ui.node.o;
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
@DebugMetadata(c = "androidx.compose.material.ripple.CommonRippleNode$addRipple$2", f = "CommonRipple.kt", l = {88}, m = "invokeSuspend")
final class CommonRippleNode$addRipple$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final p.k.b $interaction;
    final RippleAnimation $rippleAnimation;
    int label;
    final CommonRippleNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommonRippleNode$addRipple$2(RippleAnimation rippleAnimation, CommonRippleNode commonRippleNode, p.k.b bVar, Continuation<? super CommonRippleNode$addRipple$2> continuation) {
        super(2, continuation);
        this.$rippleAnimation = rippleAnimation;
        this.this$0 = commonRippleNode;
        this.$interaction = bVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CommonRippleNode$addRipple$2(this.$rippleAnimation, this.this$0, this.$interaction, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                RippleAnimation rippleAnimation = this.$rippleAnimation;
                this.label = 1;
                if (rippleAnimation.d(this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.this$0.f3132y.o(this.$interaction);
            o.a(this.this$0);
            return Unit.f64096a;
        } catch (Throwable th2) {
            this.this$0.f3132y.o(this.$interaction);
            o.a(this.this$0);
            throw th2;
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CommonRippleNode$addRipple$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
