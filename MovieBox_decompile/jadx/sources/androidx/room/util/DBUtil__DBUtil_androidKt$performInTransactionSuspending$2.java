package androidx.room.util;

import androidx.room.RoomDatabase;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n"}, d2 = {"<anonymous>", "R"}, k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2", f = "DBUtil.android.kt", l = {247}, m = "invokeSuspend")
@SourceDebugExtension
final class DBUtil__DBUtil_androidKt$performInTransactionSuspending$2 extends SuspendLambda implements Function1<Continuation<Object>, Object> {
    final Function1<Continuation<Object>, Object> $block;
    final RoomDatabase $db;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DBUtil__DBUtil_androidKt$performInTransactionSuspending$2(RoomDatabase roomDatabase, Function1<? super Continuation<Object>, ? extends Object> function1, Continuation<? super DBUtil__DBUtil_androidKt$performInTransactionSuspending$2> continuation) {
        super(1, continuation);
        this.$db = roomDatabase;
        this.$block = function1;
    }

    @Override
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2(this.$db, this.$block, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            RoomDatabase roomDatabase = this.$db;
            DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1(true, false, roomDatabase, null, this.$block);
            this.label = 1;
            obj = roomDatabase.f0(false, dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1, this);
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
    public final Object invoke(Continuation<Object> continuation) {
        return ((DBUtil__DBUtil_androidKt$performInTransactionSuspending$2) create(continuation)).invokeSuspend(Unit.f64096a);
    }
}
