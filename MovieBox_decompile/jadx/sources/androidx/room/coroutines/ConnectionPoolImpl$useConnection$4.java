package androidx.room.coroutines;

import androidx.room.Transactor;
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

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"R", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$4", f = "ConnectionPoolImpl.kt", l = {143}, m = "invokeSuspend")
final class ConnectionPoolImpl$useConnection$4 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final Function2<Transactor, Continuation<Object>, Object> $block;
    final Ref.ObjectRef<PooledConnectionImpl> $connection;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ConnectionPoolImpl$useConnection$4(Function2<? super Transactor, ? super Continuation<Object>, ? extends Object> function2, Ref.ObjectRef<PooledConnectionImpl> objectRef, Continuation<? super ConnectionPoolImpl$useConnection$4> continuation) {
        super(2, continuation);
        this.$block = function2;
        this.$connection = objectRef;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConnectionPoolImpl$useConnection$4(this.$block, this.$connection, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Function2<Transactor, Continuation<Object>, Object> function2 = this.$block;
            PooledConnectionImpl pooledConnectionImpl = this.$connection.element;
            this.label = 1;
            obj = function2.invoke(pooledConnectionImpl, this);
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
        return ((ConnectionPoolImpl$useConnection$4) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
