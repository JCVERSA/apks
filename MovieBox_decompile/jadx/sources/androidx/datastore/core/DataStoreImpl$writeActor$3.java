package androidx.datastore.core;

import androidx.core.app.NotificationCompat;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Landroidx/datastore/core/p$a;", NotificationCompat.CATEGORY_MESSAGE, "", "<anonymous>", "(Landroidx/datastore/core/p$a;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$writeActor$3", f = "DataStoreImpl.kt", l = {Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE}, m = "invokeSuspend")
final class DataStoreImpl$writeActor$3 extends SuspendLambda implements Function2<p.a, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$writeActor$3(DataStoreImpl dataStoreImpl, Continuation<? super DataStoreImpl$writeActor$3> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$writeActor$3 dataStoreImpl$writeActor$3 = new DataStoreImpl$writeActor$3(this.this$0, continuation);
        dataStoreImpl$writeActor$3.L$0 = obj;
        return dataStoreImpl$writeActor$3;
    }

    @Override
    public final Object invoke(p.a aVar, Continuation<? super Unit> continuation) {
        return ((DataStoreImpl$writeActor$3) create(aVar, continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            p.a aVar = (p.a) this.L$0;
            DataStoreImpl dataStoreImpl = this.this$0;
            this.label = 1;
            if (dataStoreImpl.t(aVar, this) == objF) {
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
