package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
public final class FlowKt__TransformKt$map$$inlined$unsafeTransform$1$1 extends ContinuationImpl {
    int label;
    Object result;
    final o0 this$0;

    public FlowKt__TransformKt$map$$inlined$unsafeTransform$1$1(o0 o0Var, Continuation continuation) {
        super(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
