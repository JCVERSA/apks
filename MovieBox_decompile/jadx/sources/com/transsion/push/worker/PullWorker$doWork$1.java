package com.transsion.push.worker;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.push.worker.PullWorker", f = "PullWorker.kt", l = {23}, m = "doWork")
final class PullWorker$doWork$1 extends ContinuationImpl {
    int label;
    Object result;
    final PullWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PullWorker$doWork$1(PullWorker pullWorker, Continuation<? super PullWorker$doWork$1> continuation) {
        super(continuation);
        this.this$0 = pullWorker;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.r(this);
    }
}
