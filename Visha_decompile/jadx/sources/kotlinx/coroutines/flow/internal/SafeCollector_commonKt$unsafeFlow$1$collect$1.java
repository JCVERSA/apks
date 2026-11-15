package kotlinx.coroutines.flow.internal;

import defpackage.u09;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
public final class SafeCollector_commonKt$unsafeFlow$1$collect$1 extends ContinuationImpl {
    int label;
    Object result;
    final u09 this$0;

    public SafeCollector_commonKt$unsafeFlow$1$collect$1(u09 u09Var, wh1<? super SafeCollector_commonKt$unsafeFlow$1$collect$1> wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
