package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1", f = "Indication.kt", l = {240}, m = "invokeSuspend")
final class DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final DefaultDebugIndication.DefaultDebugIndicationInstance this$0;

    static final class a implements kotlinx.coroutines.flow.b {

        final Ref.IntRef f2275a;

        final Ref.IntRef f2276b;

        final Ref.IntRef f2277c;

        final DefaultDebugIndication.DefaultDebugIndicationInstance f2278d;

        a(Ref.IntRef intRef, Ref.IntRef intRef2, Ref.IntRef intRef3, DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance) {
            this.f2275a = intRef;
            this.f2276b = intRef2;
            this.f2277c = intRef3;
            this.f2278d = defaultDebugIndicationInstance;
        }

        @Override
        public final Object emit(p.f fVar, Continuation continuation) {
            boolean z10 = true;
            if (fVar instanceof p.k.b) {
                this.f2275a.element++;
            } else if (fVar instanceof p.k.c) {
                this.f2275a.element--;
            } else if (fVar instanceof p.k.a) {
                this.f2275a.element--;
            } else if (fVar instanceof p.d) {
                this.f2276b.element++;
            } else if (fVar instanceof p.e) {
                this.f2276b.element--;
            } else if (fVar instanceof p.b) {
                this.f2277c.element++;
            } else if (fVar instanceof p.c) {
                this.f2277c.element--;
            }
            boolean z11 = false;
            boolean z12 = this.f2275a.element > 0;
            boolean z13 = this.f2276b.element > 0;
            boolean z14 = this.f2277c.element > 0;
            if (this.f2278d.f2272o != z12) {
                this.f2278d.f2272o = z12;
                z11 = true;
            }
            if (this.f2278d.f2273p != z13) {
                this.f2278d.f2273p = z13;
                z11 = true;
            }
            if (this.f2278d.f2274q != z14) {
                this.f2278d.f2274q = z14;
            } else {
                z10 = z11;
            }
            if (z10) {
                androidx.compose.ui.node.o.a(this.f2278d);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance, Continuation<? super DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultDebugIndicationInstance;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Ref.IntRef intRef = new Ref.IntRef();
            Ref.IntRef intRef2 = new Ref.IntRef();
            Ref.IntRef intRef3 = new Ref.IntRef();
            kotlinx.coroutines.flow.a aVarB = this.this$0.f2271n.b();
            a aVar = new a(intRef, intRef2, intRef3, this.this$0);
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
        return ((DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
