package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.vz3;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3", f = "Builders.kt", l = {111}, m = "collect")
public final class FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final vz3 this$0;

    public FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3$1(vz3 vz3Var, wh1 wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
