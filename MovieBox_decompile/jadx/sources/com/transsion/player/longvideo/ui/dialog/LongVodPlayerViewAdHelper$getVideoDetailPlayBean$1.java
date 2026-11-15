package com.transsion.player.longvideo.ui.dialog;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper", f = "LongVodPlayerViewAdHelper.kt", l = {Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE}, m = "getVideoDetailPlayBean")
final class LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final LongVodPlayerViewAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, Continuation<? super LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1> continuation) {
        super(continuation);
        this.this$0 = longVodPlayerViewAdHelper;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.R3(this);
    }
}
