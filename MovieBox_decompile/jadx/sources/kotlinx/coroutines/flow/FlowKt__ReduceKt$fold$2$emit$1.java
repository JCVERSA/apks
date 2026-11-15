package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2", f = "Reduce.kt", l = {41}, m = "emit")
public final class FlowKt__ReduceKt$fold$2$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final d0 this$0;

    public FlowKt__ReduceKt$fold$2$emit$1(d0 d0Var, Continuation<? super FlowKt__ReduceKt$fold$2$emit$1> continuation) {
        super(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
