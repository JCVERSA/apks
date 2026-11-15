package com.transsion.player.longvideo.helper;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.player.longvideo.helper.LongVodResolutionHelper", f = "LongVodResolutionHelper.kt", l = {Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE}, m = "getMp4DefaultPlayBean")
final class LongVodResolutionHelper$getMp4DefaultPlayBean$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final LongVodResolutionHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodResolutionHelper$getMp4DefaultPlayBean$1(LongVodResolutionHelper longVodResolutionHelper, Continuation<? super LongVodResolutionHelper$getMp4DefaultPlayBean$1> continuation) {
        super(continuation);
        this.this$0 = longVodResolutionHelper;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(null, this);
    }
}
