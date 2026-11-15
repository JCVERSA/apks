package com.yandex.mobile.ads.rewarded;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.common.AdRequestError;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadListener;", "", "Lcom/yandex/mobile/ads/rewarded/RewardedAd;", "rewarded", "Lzfb;", "onAdLoaded", "(Lcom/yandex/mobile/ads/rewarded/RewardedAd;)V", "Lcom/yandex/mobile/ads/common/AdRequestError;", "error", "onAdFailedToLoad", "(Lcom/yandex/mobile/ads/common/AdRequestError;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface RewardedAdLoadListener {
    void onAdFailedToLoad(AdRequestError error);

    void onAdLoaded(RewardedAd rewarded);
}
