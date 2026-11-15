package com.transsion.ad.bidding.base;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager", f = "AbsBiddingInterceptHiSavanaAdManager.kt", l = {Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE}, m = "preLoadAd")
final class AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final AbsBiddingInterceptHiSavanaAdManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1(AbsBiddingInterceptHiSavanaAdManager absBiddingInterceptHiSavanaAdManager, Continuation<? super AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1> continuation) {
        super(continuation);
        this.this$0 = absBiddingInterceptHiSavanaAdManager;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.l(null, null, this);
    }
}
