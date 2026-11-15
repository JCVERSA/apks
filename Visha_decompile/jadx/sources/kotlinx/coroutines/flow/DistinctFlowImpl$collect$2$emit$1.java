package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2", f = "Distinct.kt", l = {73}, m = "emit")
public final class DistinctFlowImpl$collect$2$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final DistinctFlowImpl.AnonymousClass2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistinctFlowImpl$collect$2$emit$1(DistinctFlowImpl.AnonymousClass2 anonymousClass2, wh1<? super DistinctFlowImpl$collect$2$emit$1> wh1Var) {
        super(wh1Var);
        this.this$0 = anonymousClass2;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
