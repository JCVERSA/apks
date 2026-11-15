package com.hisavana.yandex.executer;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.yandex.check.ExistsCheck;
import com.yandex.mobile.ads.common.AdError;
import com.yandex.mobile.ads.common.AdRequestConfiguration;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.ImpressionData;
import com.yandex.mobile.ads.common.InitializationListener;
import com.yandex.mobile.ads.interstitial.InterstitialAd;
import com.yandex.mobile.ads.interstitial.InterstitialAdEventListener;
import com.yandex.mobile.ads.interstitial.InterstitialAdLoadListener;
import com.yandex.mobile.ads.interstitial.InterstitialAdLoader;
import defpackage.ul4;

public class YandexInterstitial extends BaseInterstitial {
    private final String TAG;
    private InterstitialAd mInterstitialAd;
    private InterstitialAdLoader mInterstitialAdLoader;

    public YandexInterstitial(Context context, Network network) {
        super(context, network);
        this.TAG = "YandexInterstitial";
    }

    public void lambda$onInterstitialStartLoad$0() {
        try {
            InterstitialAdLoader interstitialAdLoader = this.mInterstitialAdLoader;
            if (interstitialAdLoader != null) {
                interstitialAdLoader.loadAd(new AdRequestConfiguration.Builder(this.mNetwork.getCodeSeatId()).build());
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        InterstitialAdLoader interstitialAdLoader = this.mInterstitialAdLoader;
        if (interstitialAdLoader != null) {
            interstitialAdLoader.cancelLoading();
            this.mInterstitialAdLoader.setAdLoadListener(null);
            this.mInterstitialAdLoader = null;
        }
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd != null) {
            interstitialAd.setAdEventListener(null);
            this.mInterstitialAd = null;
        }
    }

    @Override
    public void initInterstitial() {
        if (this.mInterstitialAdLoader == null) {
            InterstitialAdLoader interstitialAdLoader = new InterstitialAdLoader(ul4.a());
            this.mInterstitialAdLoader = interstitialAdLoader;
            interstitialAdLoader.setAdLoadListener(new InterstitialAdLoadListener() {
                @Override
                public void onAdFailedToLoad(@NonNull AdRequestError adRequestError) {
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("yandex interstitial onAdFailedToLoad");
                    sb.append(YandexInterstitial.this.getLogString());
                    sb.append("----->> error info:");
                    sb.append(adRequestError == null ? "" : adRequestError.toString());
                    adLogUtilLog.d("YandexInterstitial", sb.toString());
                    YandexInterstitial.this.adFailedToLoad(adRequestError == null ? TAdErrorCode.ERROR_SHOW_EXCEPTION : new TAdErrorCode(adRequestError.getCode(), adRequestError.getDescription()));
                }

                @Override
                public void onAdLoaded(@NonNull InterstitialAd interstitialAd) {
                    AdLogUtil.Log().d("YandexInterstitial", "banner onAdLoaded" + YandexInterstitial.this.getLogString());
                    YandexInterstitial.this.adLoaded();
                    YandexInterstitial.this.mInterstitialAd = interstitialAd;
                }
            });
        }
    }

    @Override
    public boolean isLoaded() {
        return this.mInterstitialAd != null;
    }

    @Override
    public void onInterstitialShow(Activity activity) {
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd == null || activity == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        } else {
            interstitialAd.setAdEventListener(new InterstitialAdEventListener() {
                @Override
                public void onAdClicked() {
                    AdLogUtil.Log().d("YandexInterstitial", "Interstitial is clicked" + YandexInterstitial.this.getLogString());
                    YandexInterstitial.this.adClicked(null);
                }

                @Override
                public void onAdDismissed() {
                    AdLogUtil.Log().d("YandexInterstitial", "Interstitial is Closed" + YandexInterstitial.this.getLogString());
                    YandexInterstitial.this.adClosed();
                }

                @Override
                public void onAdFailedToShow(@NonNull AdError adError) {
                    if (adError != null) {
                        AdLogUtil.Log().w("YandexInterstitial", "ad show failed, error :" + adError + YandexInterstitial.this.getLogString());
                    }
                    YandexInterstitial.this.onAdShowError(adError == null ? TAdErrorCode.ERROR_SHOW_EXCEPTION : new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, adError.getDescription()));
                }

                @Override
                public void onAdImpression(@Nullable ImpressionData impressionData) {
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Interstitial is onAdImpression");
                    sb.append(impressionData == null ? "" : impressionData.getRawData());
                    sb.append(YandexInterstitial.this.getLogString());
                    adLogUtilLog.d("YandexInterstitial", sb.toString());
                }

                @Override
                public void onAdShown() {
                    AdLogUtil.Log().d("YandexInterstitial", "Interstitial is onAdImpression" + YandexInterstitial.this.getLogString());
                    YandexInterstitial.this.adImpression(null);
                }
            });
            this.mInterstitialAd.show(activity);
        }
    }

    @Override
    public void onInterstitialStartLoad() {
        if (this.mInterstitialAdLoader == null || this.mNetwork == null) {
            adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
        } else {
            ExistsCheck.initYandex(new InitializationListener() {
                @Override
                public final void onInitializationCompleted() {
                    this.a.lambda$onInterstitialStartLoad$0();
                }
            });
        }
    }
}
