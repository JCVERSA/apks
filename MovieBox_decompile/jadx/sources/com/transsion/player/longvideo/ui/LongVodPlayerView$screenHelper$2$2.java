package com.transsion.player.longvideo.ui;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class LongVodPlayerView$screenHelper$2$2 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    LongVodPlayerView$screenHelper$2$2(Object obj) {
        super(1, obj, LongVodPlayerView.class, "autoScreenRotation", "autoScreenRotation(Z)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke(((Boolean) obj).booleanValue());
        return Unit.f64096a;
    }

    public final void invoke(boolean z10) {
        ((LongVodPlayerView) this.receiver).e0(z10);
    }
}
