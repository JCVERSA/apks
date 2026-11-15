package kotlinx.coroutines.flow;

import defpackage.c14;
import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2", f = "Transform.kt", l = {50}, m = "emit")
public final class FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final c14 this$0;

    public FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2$1(c14 c14Var, wh1 wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
