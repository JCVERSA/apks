package com.transsion.mbwidget.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.mbwidget.utils.BitmapUtils", f = "BitmapUtils.kt", l = {45}, m = "loadBitmap")
final class BitmapUtils$loadBitmap$1 extends ContinuationImpl {
    int label;
    Object result;
    final BitmapUtils this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BitmapUtils$loadBitmap$1(BitmapUtils bitmapUtils, Continuation<? super BitmapUtils$loadBitmap$1> continuation) {
        super(continuation);
        this.this$0 = bitmapUtils;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(null, null, 0, this);
    }
}
