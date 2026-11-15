package com.transsion.postdetail.shorttv.factory;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.postdetail.shorttv.factory.ShortTvDownloadProvider", f = "ShortTvDownloadProvider.kt", l = {182}, m = "getDownloadSubject")
final class ShortTvDownloadProvider$getDownloadSubject$1 extends ContinuationImpl {
    int label;
    Object result;
    final ShortTvDownloadProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDownloadProvider$getDownloadSubject$1(ShortTvDownloadProvider shortTvDownloadProvider, Continuation<? super ShortTvDownloadProvider$getDownloadSubject$1> continuation) {
        super(continuation);
        this.this$0 = shortTvDownloadProvider;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.i(null, this);
    }
}
