package com.yandex.mobile.ads.feed;

import com.yandex.mobile.ads.common.ImpressionData;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAdEventListener;", "", "Lzfb;", "onAdClicked", "()V", "Lcom/yandex/mobile/ads/common/ImpressionData;", "impressionData", "onImpression", "(Lcom/yandex/mobile/ads/common/ImpressionData;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface FeedAdEventListener {
    void onAdClicked();

    void onImpression(ImpressionData impressionData);
}
