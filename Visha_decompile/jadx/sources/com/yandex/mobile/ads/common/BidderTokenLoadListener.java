package com.yandex.mobile.ads.common;

import androidx.annotation.MainThread;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H'¢\u0006\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/yandex/mobile/ads/common/BidderTokenLoadListener;", "", "", "bidderToken", "Lzfb;", "onBidderTokenLoaded", "(Ljava/lang/String;)V", "failureReason", "onBidderTokenFailedToLoad", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface BidderTokenLoadListener {
    @MainThread
    void onBidderTokenFailedToLoad(String failureReason);

    @MainThread
    void onBidderTokenLoaded(String bidderToken);
}
