package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.w04;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
@nt1(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2", f = "Reduce.kt", l = {41}, m = "emit")
public final class FlowKt__ReduceKt$fold$2$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final w04 this$0;

    public FlowKt__ReduceKt$fold$2$emit$1(w04 w04Var, wh1<? super FlowKt__ReduceKt$fold$2$emit$1> wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
