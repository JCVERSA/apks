package kotlinx.coroutines.flow;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1", f = "Limit.kt", l = {Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE}, m = "emit")
public final class FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final z this$0;

    public FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1(z zVar, Continuation continuation) {
        super(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        throw null;
    }
}
