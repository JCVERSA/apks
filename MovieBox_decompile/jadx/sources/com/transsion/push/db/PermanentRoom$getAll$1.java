package com.transsion.push.db;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.push.db.PermanentRoom", f = "PermanentRoom.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW}, m = "getAll")
final class PermanentRoom$getAll$1 extends ContinuationImpl {
    int label;
    Object result;
    final PermanentRoom this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PermanentRoom$getAll$1(PermanentRoom permanentRoom, Continuation<? super PermanentRoom$getAll$1> continuation) {
        super(continuation);
        this.this$0 = permanentRoom;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.e(this);
    }
}
