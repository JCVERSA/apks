package com.yandex.mobile.ads.nativeads;

import androidx.annotation.MainThread;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H&¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/NativeAd;", "", "Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;", "viewBinder", "Lzfb;", "bindNativeAd", "(Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;)V", "Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;", "eventListener", "setNativeAdEventListener", "(Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;)V", "loadImages", "()V", "Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;", "listener", "addImageLoadingListener", "(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V", "removeImageLoadingListener", "Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;", "getAdAssets", "()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;", "adAssets", "Lcom/yandex/mobile/ads/nativeads/NativeAdType;", "getAdType", "()Lcom/yandex/mobile/ads/nativeads/NativeAdType;", "adType", "", "getInfo", "()Ljava/lang/String;", "info", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface NativeAd {
    void addImageLoadingListener(NativeAdImageLoadingListener listener);

    void bindNativeAd(NativeAdViewBinder viewBinder) throws NativeAdException;

    NativeAdAssets getAdAssets();

    NativeAdType getAdType();

    String getInfo();

    void loadImages();

    void removeImageLoadingListener(NativeAdImageLoadingListener listener);

    void setNativeAdEventListener(NativeAdEventListener eventListener);
}
