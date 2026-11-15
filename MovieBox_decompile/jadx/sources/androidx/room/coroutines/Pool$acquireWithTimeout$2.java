package androidx.room.coroutines;

import com.vungle.ads.internal.protos.Sdk$SDKError;
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

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "androidx.room.coroutines.Pool$acquireWithTimeout$2", f = "ConnectionPoolImpl.kt", l = {Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
final class Pool$acquireWithTimeout$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Ref.ObjectRef<i> $connection;
    Object L$0;
    int label;
    final Pool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Pool$acquireWithTimeout$2(Ref.ObjectRef<i> objectRef, Pool pool, Continuation<? super Pool$acquireWithTimeout$2> continuation) {
        super(2, continuation);
        this.$connection = objectRef;
        this.this$0 = pool;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Pool$acquireWithTimeout$2(this.$connection, this.this$0, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef<i> objectRef;
        T t10;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef<i> objectRef2 = this.$connection;
            Pool pool = this.this$0;
            this.L$0 = objectRef2;
            this.label = 1;
            Object objA = pool.a(this);
            if (objA == objF) {
                return objF;
            }
            objectRef = objectRef2;
            t10 = objA;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) this.L$0;
            ResultKt.b(obj);
            t10 = obj;
        }
        objectRef.element = t10;
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((Pool$acquireWithTimeout$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
