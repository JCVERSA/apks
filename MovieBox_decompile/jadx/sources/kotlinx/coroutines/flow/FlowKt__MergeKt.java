package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

abstract class FlowKt__MergeKt {

    private static final int f64774a = kotlinx.coroutines.internal.a0.b("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Integer.MAX_VALUE);

    public static final a a(a aVar, Function2 function2) {
        return c.E(aVar, new FlowKt__MergeKt$mapLatest$1(function2, null));
    }

    public static final a b(a aVar, Function3 function3) {
        return new ChannelFlowTransformLatest(function3, aVar, null, 0, null, 28, null);
    }
}
