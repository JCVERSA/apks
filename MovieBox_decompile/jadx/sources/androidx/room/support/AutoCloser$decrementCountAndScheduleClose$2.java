package androidx.room.support;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "androidx.room.support.AutoCloser$decrementCountAndScheduleClose$2", f = "AutoCloser.android.kt", l = {167}, m = "invokeSuspend")
final class AutoCloser$decrementCountAndScheduleClose$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final AutoCloser this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AutoCloser$decrementCountAndScheduleClose$2(AutoCloser autoCloser, Continuation<? super AutoCloser$decrementCountAndScheduleClose$2> continuation) {
        super(2, continuation);
        this.this$0 = autoCloser;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AutoCloser$decrementCountAndScheduleClose$2(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            long j10 = this.this$0.f14401f;
            this.label = 1;
            if (u0.a(j10, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        this.this$0.e();
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AutoCloser$decrementCountAndScheduleClose$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
