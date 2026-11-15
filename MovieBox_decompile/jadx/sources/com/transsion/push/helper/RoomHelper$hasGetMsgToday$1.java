package com.transsion.push.helper;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.push.helper.RoomHelper", f = "RoomHelper.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE}, m = "hasGetMsgToday")
final class RoomHelper$hasGetMsgToday$1 extends ContinuationImpl {
    int label;
    Object result;
    final RoomHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomHelper$hasGetMsgToday$1(RoomHelper roomHelper, Continuation<? super RoomHelper$hasGetMsgToday$1> continuation) {
        super(continuation);
        this.this$0 = roomHelper;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.f(null, this);
    }
}
