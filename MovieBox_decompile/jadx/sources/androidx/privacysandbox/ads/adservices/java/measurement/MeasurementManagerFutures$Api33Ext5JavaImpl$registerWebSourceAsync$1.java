package androidx.privacysandbox.ads.adservices.java.measurement;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import v3.n;
import v3.o;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1", f = "MeasurementManagerFutures.kt", l = {151}, m = "invokeSuspend")
final class MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final o $request;
    int label;
    final MeasurementManagerFutures.Api33Ext5JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(MeasurementManagerFutures.Api33Ext5JavaImpl api33Ext5JavaImpl, o oVar, Continuation<? super MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1> continuation) {
        super(2, continuation);
        this.this$0 = api33Ext5JavaImpl;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this.this$0, null, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n nVar = this.this$0.f13709b;
            this.label = 1;
            if (nVar.e(null, this) == objF) {
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
        return ((MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
