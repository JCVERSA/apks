package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
public final class FlowKt__CollectKt$collectIndexed$2$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final p this$0;

    public FlowKt__CollectKt$collectIndexed$2$emit$1(p pVar, Continuation<? super FlowKt__CollectKt$collectIndexed$2$emit$1> continuation) {
        super(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
