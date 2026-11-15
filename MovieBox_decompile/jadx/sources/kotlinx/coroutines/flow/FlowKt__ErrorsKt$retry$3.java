package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\t\u001a\u00020\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0015\u0010\u0005\u001a\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u00052\u0015\u0010\u0007\u001a\u00110\u0006¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0007H\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"T", "Lkotlinx/coroutines/flow/b;", "", "Lkotlin/ParameterName;", "name", "cause", "", "attempt", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;J)Z"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3", f = "Errors.kt", l = {91}, m = "invokeSuspend")
final class FlowKt__ErrorsKt$retry$3 extends SuspendLambda implements Function4<b, Throwable, Long, Continuation<? super Boolean>, Object> {
    final Function2<Throwable, Continuation<? super Boolean>, Object> $predicate;
    final long $retries;
    long J$0;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__ErrorsKt$retry$3(long j10, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super FlowKt__ErrorsKt$retry$3> continuation) {
        super(4, continuation);
        this.$retries = j10;
        this.$predicate = function2;
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return invoke((b) obj, (Throwable) obj2, ((Number) obj3).longValue(), (Continuation<? super Boolean>) obj4);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003a  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Throwable th2 = (Throwable) this.L$0;
            if (this.J$0 < this.$retries) {
                Function2<Throwable, Continuation<? super Boolean>, Object> function2 = this.$predicate;
                this.label = 1;
                obj = function2.invoke(th2, this);
                if (obj == objF) {
                    return objF;
                }
            }
            return Boxing.a(z);
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        boolean z10 = ((Boolean) obj).booleanValue();
        return Boxing.a(z10);
    }

    public final Object invoke(b bVar, Throwable th2, long j10, Continuation<? super Boolean> continuation) {
        FlowKt__ErrorsKt$retry$3 flowKt__ErrorsKt$retry$3 = new FlowKt__ErrorsKt$retry$3(this.$retries, this.$predicate, continuation);
        flowKt__ErrorsKt$retry$3.L$0 = th2;
        flowKt__ErrorsKt$retry$3.J$0 = j10;
        return flowKt__ErrorsKt$retry$3.invokeSuspend(Unit.f64096a);
    }
}
