package com.yandex.mobile.ads.appopenad;

import android.app.Activity;
import androidx.annotation.MainThread;
import com.transsion.push.PushConstants;
import com.yandex.mobile.ads.common.AdInfo;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/yandex/mobile/ads/appopenad/AppOpenAd;", "", "Lcom/yandex/mobile/ads/appopenad/AppOpenAdEventListener;", "appOpenAdEventListener", "Lzfb;", "setAdEventListener", "(Lcom/yandex/mobile/ads/appopenad/AppOpenAdEventListener;)V", "Landroid/app/Activity;", "activity", PushConstants.PUSH_SERVICE_TYPE_SHOW, "(Landroid/app/Activity;)V", "Lcom/yandex/mobile/ads/common/AdInfo;", "getInfo", "()Lcom/yandex/mobile/ads/common/AdInfo;", "info", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface AppOpenAd {
    AdInfo getInfo();

    void setAdEventListener(AppOpenAdEventListener appOpenAdEventListener);

    void show(Activity activity);
}
