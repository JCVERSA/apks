package com.yandex.mobile.ads.banner;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.ImpressionData;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0002H&¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\u0004J\u0019\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\fH&¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/yandex/mobile/ads/banner/BannerAdEventListener;", "", "Lzfb;", "onAdLoaded", "()V", "Lcom/yandex/mobile/ads/common/AdRequestError;", "error", "onAdFailedToLoad", "(Lcom/yandex/mobile/ads/common/AdRequestError;)V", "onAdClicked", "onLeftApplication", "onReturnedToApplication", "Lcom/yandex/mobile/ads/common/ImpressionData;", "impressionData", "onImpression", "(Lcom/yandex/mobile/ads/common/ImpressionData;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface BannerAdEventListener {
    void onAdClicked();

    void onAdFailedToLoad(AdRequestError error);

    void onAdLoaded();

    void onImpression(ImpressionData impressionData);

    void onLeftApplication();

    void onReturnedToApplication();
}
