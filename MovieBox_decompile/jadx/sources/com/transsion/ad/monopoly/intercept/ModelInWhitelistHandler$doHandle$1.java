package com.transsion.ad.monopoly.intercept;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.intercept.ModelInWhitelistHandler", f = "ModelInWhitelistHandler.kt", l = {23, 39}, m = "doHandle")
final class ModelInWhitelistHandler$doHandle$1 extends ContinuationImpl {
    int label;
    Object result;
    final ModelInWhitelistHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ModelInWhitelistHandler$doHandle$1(ModelInWhitelistHandler modelInWhitelistHandler, Continuation<? super ModelInWhitelistHandler$doHandle$1> continuation) {
        super(continuation);
        this.this$0 = modelInWhitelistHandler;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, null, null, this);
    }
}
