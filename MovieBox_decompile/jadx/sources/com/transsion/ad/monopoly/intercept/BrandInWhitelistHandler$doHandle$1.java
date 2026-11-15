package com.transsion.ad.monopoly.intercept;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.intercept.BrandInWhitelistHandler", f = "BrandInWhitelistHandler.kt", l = {32, Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "doHandle")
final class BrandInWhitelistHandler$doHandle$1 extends ContinuationImpl {
    int label;
    Object result;
    final BrandInWhitelistHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BrandInWhitelistHandler$doHandle$1(BrandInWhitelistHandler brandInWhitelistHandler, Continuation<? super BrandInWhitelistHandler$doHandle$1> continuation) {
        super(continuation);
        this.this$0 = brandInWhitelistHandler;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, null, null, this);
    }
}
