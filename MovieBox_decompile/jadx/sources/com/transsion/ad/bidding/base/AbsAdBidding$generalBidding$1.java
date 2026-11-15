package com.transsion.ad.bidding.base;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.bidding.base.AbsAdBidding", f = "AbsAdBidding.kt", l = {854}, m = "generalBidding")
final class AbsAdBidding$generalBidding$1 extends ContinuationImpl {
    int label;
    Object result;
    final AbsAdBidding this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsAdBidding$generalBidding$1(AbsAdBidding absAdBidding, Continuation<? super AbsAdBidding$generalBidding$1> continuation) {
        super(continuation);
        this.this$0 = absAdBidding;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.V(null, this);
    }
}
