package kotlinx.coroutines.flow;

import defpackage.naa;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.u74;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

public abstract class FlowKt__MergeKt {
    public static final int a = naa.b("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Integer.MAX_VALUE);

    public static final nz3 a(nz3 nz3Var, s74 s74Var) {
        return sz3.B(nz3Var, new FlowKt__MergeKt$mapLatest$1(s74Var, null));
    }

    public static final nz3 b(nz3 nz3Var, u74 u74Var) {
        return new ChannelFlowTransformLatest(u74Var, nz3Var, null, 0, null, 28, null);
    }
}
