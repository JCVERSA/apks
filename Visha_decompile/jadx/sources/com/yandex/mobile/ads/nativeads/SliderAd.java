package com.yandex.mobile.ads.nativeads;

import androidx.annotation.MainThread;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/SliderAd;", "", "Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;", "viewBinder", "Lzfb;", "bindSliderAd", "(Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;)V", "", "Lcom/yandex/mobile/ads/nativeads/NativeAd;", "getNativeAds", "()Ljava/util/List;", "nativeAds", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface SliderAd {
    void bindSliderAd(NativeAdViewBinder viewBinder) throws NativeAdException;

    List<NativeAd> getNativeAds();
}
