package com.monetization.ads.mediation.nativeads;

import com.transsion.push.PushConstants;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H&¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\n8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;", "", "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdViewProvider;", "viewProvider", "Lzfb;", "bindNativeAd", "(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdViewProvider;)V", "unbindNativeAd", PushConstants.PROVIDER_FIELD_DESTROY, "()V", "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;", "getMediatedNativeAdAssets", "()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;", "mediatedNativeAdAssets", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediatedNativeAd {
    void bindNativeAd(MediatedNativeAdViewProvider viewProvider);

    void destroy();

    MediatedNativeAdAssets getMediatedNativeAdAssets();

    void unbindNativeAd(MediatedNativeAdViewProvider viewProvider);
}
