package androidx.room.coroutines;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2", f = "FlowBuilder.kt", l = {224, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "emit")
public final class FlowUtil$createFlow$$inlined$map$1$2$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final j this$0;

    public FlowUtil$createFlow$$inlined$map$1$2$1(j jVar, Continuation continuation) {
        super(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
