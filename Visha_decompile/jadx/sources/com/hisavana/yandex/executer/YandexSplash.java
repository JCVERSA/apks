package com.hisavana.yandex.executer;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.yandex.check.ExistsCheck;
import com.yandex.mobile.ads.appopenad.AppOpenAd;
import com.yandex.mobile.ads.appopenad.AppOpenAdEventListener;
import com.yandex.mobile.ads.appopenad.AppOpenAdLoadListener;
import com.yandex.mobile.ads.appopenad.AppOpenAdLoader;
import com.yandex.mobile.ads.common.AdError;
import com.yandex.mobile.ads.common.AdRequestConfiguration;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.ImpressionData;
import com.yandex.mobile.ads.common.InitializationListener;
import defpackage.ul4;
import defpackage.zk5;

public class YandexSplash extends BaseSplash<View> {
    private final String TAG;
    private AppOpenAd mAppOpenAd;
    private AppOpenAdLoader mAppOpenAdLoader;

    public YandexSplash(Context context, Network network) {
        super(context, network);
        this.TAG = "YandexSplash";
    }

    public void lambda$onSplashStartLoad$0() {
        if (this.mAppOpenAdLoader == null) {
            this.mAppOpenAdLoader = new AppOpenAdLoader(ul4.a());
        }
        this.mAppOpenAdLoader.setAdLoadListener(new AppOpenAdLoadListener() {
            @Override
            public void onAdFailedToLoad(@NonNull AdRequestError adRequestError) {
                AdLogUtil adLogUtilLog = AdLogUtil.Log();
                StringBuilder sb = new StringBuilder();
                sb.append("yandex appOpenAd onAdFailedToLoad");
                sb.append(YandexSplash.this.getLogString());
                sb.append("----->> error info:");
                sb.append(adRequestError == null ? "" : adRequestError.toString());
                adLogUtilLog.d("YandexSplash", sb.toString());
                YandexSplash.this.adFailedToLoad(adRequestError == null ? TAdErrorCode.ERROR_AD_REQUEST_FAILED : new TAdErrorCode(adRequestError.getCode(), adRequestError.getDescription()));
            }

            @Override
            public void onAdLoaded(@NonNull AppOpenAd appOpenAd) {
                AdLogUtil adLogUtilLog = AdLogUtil.Log();
                StringBuilder sb = new StringBuilder();
                sb.append("yandex appOpenAd onAdLoaded");
                sb.append(YandexSplash.this.getLogString());
                sb.append("----->> ad info:");
                sb.append(appOpenAd == null ? "" : appOpenAd.getInfo());
                adLogUtilLog.d("YandexSplash", sb.toString());
                YandexSplash.this.mAppOpenAd = appOpenAd;
                YandexSplash.this.adLoaded();
            }
        });
        this.mAppOpenAdLoader.loadAd(new AdRequestConfiguration.Builder(this.mNetwork.getCodeSeatId()).build());
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AppOpenAd appOpenAd = this.mAppOpenAd;
        if (appOpenAd != null) {
            appOpenAd.setAdEventListener(null);
            this.mAppOpenAd = null;
        }
    }

    @Override
    public View getSplash() {
        if (ul4.a() != null) {
            return new View(ul4.a().getApplicationContext());
        }
        return null;
    }

    @Override
    public void onSplashShow() {
        try {
            Activity activityH = zk5.h();
            AppOpenAd appOpenAd = this.mAppOpenAd;
            if (appOpenAd != null && activityH != null) {
                appOpenAd.setAdEventListener(new AppOpenAdEventListener() {
                    @Override
                    public void onAdClicked() {
                        AdLogUtil.Log().d("YandexSplash", "Splash is clicked" + YandexSplash.this.getLogString());
                        YandexSplash.this.adClicked(null);
                    }

                    @Override
                    public void onAdDismissed() {
                        AdLogUtil.Log().d("YandexSplash", "Splash is Closed" + YandexSplash.this.getLogString());
                        YandexSplash.this.adClosed();
                    }

                    @Override
                    public void onAdFailedToShow(@NonNull AdError adError) {
                        if (adError != null) {
                            AdLogUtil.Log().w("YandexSplash", "ad show failed, error :" + adError + YandexSplash.this.getLogString());
                        }
                        YandexSplash.this.onAdShowError(adError == null ? TAdErrorCode.ERROR_SHOW_EXCEPTION : new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, adError.getDescription()));
                    }

                    @Override
                    public void onAdImpression(@Nullable ImpressionData impressionData) {
                    }

                    @Override
                    public void onAdShown() {
                        AdLogUtil.Log().d("YandexSplash", "Splash is onAdImpression" + YandexSplash.this.getLogString());
                        YandexSplash.this.adImpression(null);
                    }
                });
                this.mAppOpenAd.show(activityH);
                return;
            }
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        } catch (Exception e) {
            AdLogUtil.Log().w("YandexSplash", "yandex onSplashShow error:" + e.getMessage());
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        }
    }

    @Override
    public void onSplashStartLoad() {
        ExistsCheck.initYandex(new InitializationListener() {
            @Override
            public final void onInitializationCompleted() {
                this.a.lambda$onSplashStartLoad$0();
            }
        });
    }
}
