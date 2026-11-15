package kotlinx.coroutines.flow;

import defpackage.f04;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
public final class FlowKt__CollectKt$collectIndexed$2$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final f04 this$0;

    public FlowKt__CollectKt$collectIndexed$2$emit$1(f04 f04Var, wh1<? super FlowKt__CollectKt$collectIndexed$2$emit$1> wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
