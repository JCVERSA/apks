package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2", f = "MultiProcessCoordinator.android.kt", l = {163}, m = "invokeSuspend")
@SourceDebugExtension
public final class MultiProcessCoordinator$withLazyCounter$2 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final Function2<u, Continuation<Object>, Object> $block;
    int label;
    final q this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MultiProcessCoordinator$withLazyCounter$2(Function2<? super u, ? super Continuation<Object>, ? extends Object> function2, q qVar, Continuation<? super MultiProcessCoordinator$withLazyCounter$2> continuation) {
        super(2, continuation);
        this.$block = function2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MultiProcessCoordinator$withLazyCounter$2(this.$block, null, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Function2<u, Continuation<Object>, Object> function2 = this.$block;
            q.f(null);
            this.label = 1;
            obj = function2.invoke(null, this);
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

    public final Object invokeSuspend$$forInline(Object obj) {
        Function2<u, Continuation<Object>, Object> function2 = this.$block;
        q.f(null);
        return function2.invoke(null, this);
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((MultiProcessCoordinator$withLazyCounter$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
