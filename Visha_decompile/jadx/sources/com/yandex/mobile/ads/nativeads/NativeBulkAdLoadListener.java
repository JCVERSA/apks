package com.yandex.mobile.ads.nativeads;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.common.AdRequestError;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoadListener;", "", "", "Lcom/yandex/mobile/ads/nativeads/NativeAd;", "nativeAds", "Lzfb;", "onAdsLoaded", "(Ljava/util/List;)V", "Lcom/yandex/mobile/ads/common/AdRequestError;", "error", "onAdsFailedToLoad", "(Lcom/yandex/mobile/ads/common/AdRequestError;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface NativeBulkAdLoadListener {
    void onAdsFailedToLoad(AdRequestError error);

    void onAdsLoaded(List<NativeAd> nativeAds);
}
