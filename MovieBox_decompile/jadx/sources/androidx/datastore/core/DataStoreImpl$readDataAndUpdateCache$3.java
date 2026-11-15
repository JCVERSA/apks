package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Lkotlin/Pair;", "Landroidx/datastore/core/v;", "", "<anonymous>", "()Lkotlin/Pair;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", l = {298, 300}, m = "invokeSuspend")
final class DataStoreImpl$readDataAndUpdateCache$3 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends v, ? extends Boolean>>, Object> {
    Object L$0;
    int label;
    final DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$readDataAndUpdateCache$3(DataStoreImpl dataStoreImpl, Continuation<? super DataStoreImpl$readDataAndUpdateCache$3> continuation) {
        super(1, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DataStoreImpl$readDataAndUpdateCache$3(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Throwable th2;
        v rVar;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                DataStoreImpl dataStoreImpl = this.this$0;
                this.label = 1;
                obj = dataStoreImpl.y(true, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    th2 = (Throwable) this.L$0;
                    ResultKt.b(obj);
                    rVar = new r(th2, ((Number) obj).intValue());
                    return TuplesKt.a(rVar, Boxing.a(true));
                }
                ResultKt.b(obj);
            }
            rVar = (v) obj;
        } catch (Throwable th3) {
            m mVarR = this.this$0.r();
            this.L$0 = th3;
            this.label = 2;
            Object objA = mVarR.a(this);
            if (objA == objF) {
                return objF;
            }
            th2 = th3;
            obj = objA;
        }
        return TuplesKt.a(rVar, Boxing.a(true));
    }

    @Override
    public final Object invoke(Continuation<? super Pair<? extends v, Boolean>> continuation) {
        return ((DataStoreImpl$readDataAndUpdateCache$3) create(continuation)).invokeSuspend(Unit.f64096a);
    }
}
