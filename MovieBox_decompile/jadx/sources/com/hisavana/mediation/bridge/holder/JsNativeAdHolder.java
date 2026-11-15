package com.hisavana.mediation.bridge.holder;

import b7.c;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.hisavana.mediation.bridge.listener.BridgeListener;
import com.hisavana.mediation.bridge.listener.BridgeSspAdListener;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0011\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "Lb7/c;", CommonLogUtil.TAG_AD, "", "callbackId", "codeSeatId", "", "adType", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "bridgeListener", "<init>", "(Lb7/c;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V", "", "loadAd", "()V", "showAd", "release", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JsNativeAdHolder extends JsAdHolder<c> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsNativeAdHolder(c ad2, String callbackId, String codeSeatId, int i10, BridgeListener bridgeListener) {
        super(ad2, callbackId, codeSeatId, i10, bridgeListener);
        Intrinsics.h(ad2, "ad");
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(bridgeListener, "bridgeListener");
        ad2.p(new BridgeSspAdListener(this));
    }

    @Override
    public void loadAd() {
        getAd().v();
    }

    @Override
    public void release() {
        super.release();
        getAd().c();
    }

    @Override
    public void showAd() {
    }
}
