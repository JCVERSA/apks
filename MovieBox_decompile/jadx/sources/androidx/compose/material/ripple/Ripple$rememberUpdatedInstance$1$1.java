package androidx.compose.material.ripple;

import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1$1", f = "Ripple.kt", l = {Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE}, m = "invokeSuspend")
final class Ripple$rememberUpdatedInstance$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final RippleIndicationInstance $instance;
    final p.g $interactionSource;
    private Object L$0;
    int label;

    static final class a implements kotlinx.coroutines.flow.b {

        final RippleIndicationInstance f3136a;

        final n0 f3137b;

        a(RippleIndicationInstance rippleIndicationInstance, n0 n0Var) {
            this.f3136a = rippleIndicationInstance;
            this.f3137b = n0Var;
        }

        @Override
        public final Object emit(p.f fVar, Continuation continuation) {
            if (fVar instanceof p.k.b) {
                this.f3136a.b((p.k.b) fVar, this.f3137b);
            } else if (fVar instanceof p.k.c) {
                this.f3136a.d(((p.k.c) fVar).a());
            } else if (fVar instanceof p.k.a) {
                this.f3136a.d(((p.k.a) fVar).a());
            } else {
                this.f3136a.e(fVar, this.f3137b);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Ripple$rememberUpdatedInstance$1$1(p.g gVar, RippleIndicationInstance rippleIndicationInstance, Continuation<? super Ripple$rememberUpdatedInstance$1$1> continuation) {
        super(2, continuation);
        this.$interactionSource = gVar;
        this.$instance = rippleIndicationInstance;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Ripple$rememberUpdatedInstance$1$1 ripple$rememberUpdatedInstance$1$1 = new Ripple$rememberUpdatedInstance$1$1(this.$interactionSource, this.$instance, continuation);
        ripple$rememberUpdatedInstance$1$1.L$0 = obj;
        return ripple$rememberUpdatedInstance$1$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            kotlinx.coroutines.flow.a aVarB = this.$interactionSource.b();
            a aVar = new a(this.$instance, n0Var);
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
        return ((Ripple$rememberUpdatedInstance$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
