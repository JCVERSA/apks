package com.hisavana.yandex.check;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.yandex.executer.YandexBanner;
import com.hisavana.yandex.executer.YandexInterstitial;
import com.hisavana.yandex.executer.YandexNative;
import com.hisavana.yandex.executer.YandexSplash;
import com.hisavana.yandex.executer.YandexVideo;
import com.hisavana.yandex.holder.YandexNativeViewHolder;
import com.yandex.mobile.ads.common.InitializationListener;
import com.yandex.mobile.ads.common.MobileAds;
import defpackage.ul4;
import java.util.concurrent.atomic.AtomicBoolean;

public class ExistsCheck implements IBaseAdSummary {
    private static final AtomicBoolean isInit = new AtomicBoolean(false);

    public static void initYandex(final InitializationListener initializationListener) {
        MobileAds.setUserConsent(AppStartInfo.userConsent);
        MobileAds.setAgeRestrictedUser(AppStartInfo.ageRestrictedUser);
        if (isInit.get()) {
            initializationListener.onInitializationCompleted();
        } else {
            MobileAds.initialize(ul4.a(), new InitializationListener() {
                @Override
                public void onInitializationCompleted() {
                    AdLogUtil.Log().d("ExistsCheck", "Yandex onInitializationCompleted");
                    ExistsCheck.isInit.set(true);
                    initializationListener.onInitializationCompleted();
                }
            });
        }
    }

    @Override
    public BaseBanner<View> getBanner(Context context, Network network, int i, int i2) {
        return new YandexBanner(context, network);
    }

    @Override
    public BaseInterstitial getInterstitial(Context context, Network network) {
        return new YandexInterstitial(context, network);
    }

    @Override
    public BaseNative getNative(Context context, Network network, int i) {
        return new YandexNative(context, network, i);
    }

    @Override
    public BaseNativeViewHolder getNativeViewHolder() {
        return new YandexNativeViewHolder();
    }

    @Override
    public BaseQueryPrice getQueryPrice() {
        return null;
    }

    @Override
    public BaseSplash<View> getSplash(Context context, Network network) {
        return new YandexSplash(context, network);
    }

    @Override
    public BaseVideo getVideo(Context context, Network network) {
        return new YandexVideo(context, network);
    }

    @Override
    public void init(@NonNull Context context, AdSourceConfig adSourceConfig) {
        MobileAds.enableLogging(adSourceConfig.isDebug);
    }
}
