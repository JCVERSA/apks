package kotlinx.coroutines.flow;

import defpackage.i14;
import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
@nt1(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {50, 51}, m = "emit")
public final class FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final i14 this$0;

    public FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1(i14 i14Var, wh1 wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
