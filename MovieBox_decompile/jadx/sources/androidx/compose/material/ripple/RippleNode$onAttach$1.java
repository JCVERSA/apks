package androidx.compose.material.ripple;

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
@DebugMetadata(c = "androidx.compose.material.ripple.RippleNode$onAttach$1", f = "Ripple.kt", l = {378}, m = "invokeSuspend")
final class RippleNode$onAttach$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final RippleNode this$0;

    static final class a implements kotlinx.coroutines.flow.b {

        final RippleNode f3174a;

        final n0 f3175b;

        a(RippleNode rippleNode, n0 n0Var) {
            this.f3174a = rippleNode;
            this.f3175b = n0Var;
        }

        @Override
        public final Object emit(p.f fVar, Continuation continuation) {
            if (!(fVar instanceof p.k)) {
                this.f3174a.P1(fVar, this.f3175b);
            } else if (this.f3174a.f3172w) {
                this.f3174a.N1((p.k) fVar);
            } else {
                this.f3174a.f3173x.e(fVar);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RippleNode$onAttach$1(RippleNode rippleNode, Continuation<? super RippleNode$onAttach$1> continuation) {
        super(2, continuation);
        this.this$0 = rippleNode;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RippleNode$onAttach$1 rippleNode$onAttach$1 = new RippleNode$onAttach$1(this.this$0, continuation);
        rippleNode$onAttach$1.L$0 = obj;
        return rippleNode$onAttach$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            kotlinx.coroutines.flow.a aVarB = this.this$0.f3163n.b();
            a aVar = new a(this.this$0, n0Var);
            this.label = 1;
            if (aVarB.a(aVar, this) == objF) {
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
        return ((RippleNode$onAttach$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
