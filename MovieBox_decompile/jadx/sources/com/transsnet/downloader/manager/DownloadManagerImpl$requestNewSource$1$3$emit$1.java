package com.transsnet.downloader.manager;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$3", f = "DownloadManagerImpl.kt", l = {1539, 1540}, m = "emit")
final class DownloadManagerImpl$requestNewSource$1$3$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final DownloadManagerImpl$requestNewSource$1.AnonymousClass3 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerImpl$requestNewSource$1$3$emit$1(DownloadManagerImpl$requestNewSource$1.AnonymousClass3 anonymousClass3, Continuation<? super DownloadManagerImpl$requestNewSource$1$3$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass3;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
