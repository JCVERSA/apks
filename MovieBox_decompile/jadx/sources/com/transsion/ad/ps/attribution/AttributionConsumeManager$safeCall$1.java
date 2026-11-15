package com.transsion.ad.ps.attribution;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.ps.attribution.AttributionConsumeManager", f = "AttributionConsumeManager.kt", l = {75, 86, 93}, m = "safeCall")
final class AttributionConsumeManager$safeCall$1 extends ContinuationImpl {
    int label;
    Object result;
    final AttributionConsumeManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AttributionConsumeManager$safeCall$1(AttributionConsumeManager attributionConsumeManager, Continuation<? super AttributionConsumeManager$safeCall$1> continuation) {
        super(continuation);
        this.this$0 = attributionConsumeManager;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.q(this);
    }
}
