package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$updateData$2", f = "DataStoreImpl.kt", l = {169}, m = "invokeSuspend")
final class DataStoreImpl$updateData$2 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final Function2<Object, Continuation<Object>, Object> $transform;
    private Object L$0;
    int label;
    final DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DataStoreImpl$updateData$2(DataStoreImpl dataStoreImpl, Function2<Object, ? super Continuation<Object>, ? extends Object> function2, Continuation<? super DataStoreImpl$updateData$2> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
        this.$transform = function2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$updateData$2 dataStoreImpl$updateData$2 = new DataStoreImpl$updateData$2(this.this$0, this.$transform, continuation);
        dataStoreImpl$updateData$2.L$0 = obj;
        return dataStoreImpl$updateData$2;
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            kotlinx.coroutines.w wVarB = kotlinx.coroutines.y.b(null, 1, null);
            this.this$0.f8261l.e(new p.a(this.$transform, wVarB, this.this$0.f8257h.a(), n0Var.getCoroutineContext()));
            this.label = 1;
            obj = wVarB.f(this);
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

    @Override
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((DataStoreImpl$updateData$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
