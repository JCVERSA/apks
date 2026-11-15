package kotlinx.coroutines.flow.internal;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", l = {Sdk$SDKMetric.SDKMetricType.NOTIFICATION_REDIRECT_VALUE, 30}, m = "emit")
final class CombineKt$combineInternal$2$1$1$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final CombineKt$combineInternal$2.AnonymousClass1.C07981 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CombineKt$combineInternal$2$1$1$emit$1(CombineKt$combineInternal$2.AnonymousClass1.C07981 c07981, Continuation<? super CombineKt$combineInternal$2$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = c07981;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
