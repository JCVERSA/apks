package com.hisavana.yandex.executer;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.yandex.check.ExistsCheck;
import com.yandex.mobile.ads.common.AdError;
import com.yandex.mobile.ads.common.AdRequestConfiguration;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.ImpressionData;
import com.yandex.mobile.ads.common.InitializationListener;
import com.yandex.mobile.ads.rewarded.Reward;
import com.yandex.mobile.ads.rewarded.RewardedAd;
import com.yandex.mobile.ads.rewarded.RewardedAdEventListener;
import com.yandex.mobile.ads.rewarded.RewardedAdLoadListener;
import com.yandex.mobile.ads.rewarded.RewardedAdLoader;
import defpackage.ul4;

public class YandexVideo extends BaseVideo {
    private final String TAG;
    private RewardedAd mRewardedAd;
    private RewardedAdLoader mRewardedAdLoader;

    public YandexVideo(Context context, Network network) {
        super(context, network);
        this.TAG = "YandexVideo";
    }

    public void lambda$onVideoStartLoad$0() {
        try {
            RewardedAdLoader rewardedAdLoader = this.mRewardedAdLoader;
            if (rewardedAdLoader != null) {
                rewardedAdLoader.loadAd(new AdRequestConfiguration.Builder(this.mNetwork.getCodeSeatId()).build());
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        RewardedAdLoader rewardedAdLoader = this.mRewardedAdLoader;
        if (rewardedAdLoader != null) {
            rewardedAdLoader.setAdLoadListener(null);
            this.mRewardedAdLoader = null;
        }
        RewardedAd rewardedAd = this.mRewardedAd;
        if (rewardedAd != null) {
            rewardedAd.setAdEventListener(null);
            this.mRewardedAd = null;
        }
    }

    @Override
    public void initVideo() {
        if (this.mRewardedAdLoader == null) {
            RewardedAdLoader rewardedAdLoader = new RewardedAdLoader(ul4.a());
            this.mRewardedAdLoader = rewardedAdLoader;
            rewardedAdLoader.setAdLoadListener(new RewardedAdLoadListener() {
                @Override
                public void onAdFailedToLoad(@NonNull AdRequestError adRequestError) {
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("yandex rewarded onAdFailedToLoad");
                    sb.append(YandexVideo.this.getLogString());
                    sb.append("----->> error info:");
                    sb.append(adRequestError == null ? "" : adRequestError.toString());
                    adLogUtilLog.d("YandexVideo", sb.toString());
                    YandexVideo.this.adFailedToLoad(adRequestError == null ? TAdErrorCode.ERROR_AD_REQUEST_FAILED : new TAdErrorCode(adRequestError.getCode(), adRequestError.getDescription()));
                }

                @Override
                public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("yandex rewarded onAdLoaded");
                    sb.append(YandexVideo.this.getLogString());
                    sb.append("----->> ad info:");
                    sb.append(rewardedAd == null ? "" : rewardedAd.getInfo());
                    adLogUtilLog.d("YandexVideo", sb.toString());
                    YandexVideo.this.mRewardedAd = rewardedAd;
                    YandexVideo.this.adLoaded();
                }
            });
        }
    }

    @Override
    public boolean isLoaded() {
        return this.mRewardedAd != null;
    }

    @Override
    public void onVideoShow(Activity activity) {
        RewardedAd rewardedAd;
        if (activity == null || (rewardedAd = this.mRewardedAd) == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        } else {
            rewardedAd.setAdEventListener(new RewardedAdEventListener() {
                @Override
                public void onAdClicked() {
                    AdLogUtil.Log().d("YandexVideo", "YandexVideop is clicked" + YandexVideo.this.getLogString());
                    YandexVideo.this.adClicked(null);
                }

                @Override
                public void onAdDismissed() {
                    YandexVideo.this.mRewardedAd = null;
                    AdLogUtil.Log().d("YandexVideo", "YandexVideo --> video is adClosed");
                    YandexVideo.this.adClosed();
                }

                @Override
                public void onAdFailedToShow(@NonNull AdError adError) {
                    if (adError != null) {
                        AdLogUtil.Log().w("YandexVideo", "ad show failed, error :" + adError + YandexVideo.this.getLogString());
                    }
                    YandexVideo.this.onAdShowError(adError == null ? TAdErrorCode.ERROR_SHOW_EXCEPTION : new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, adError.getDescription()));
                }

                @Override
                public void onAdImpression(@Nullable ImpressionData impressionData) {
                }

                @Override
                public void onAdShown() {
                    AdLogUtil.Log().d("YandexVideo", "Rewarded is onAdImpression" + YandexVideo.this.getLogString());
                    YandexVideo.this.adImpression(null);
                }

                @Override
                public void onRewarded(@NonNull Reward reward) {
                    AdLogUtil.Log().d("YandexVideo", "Yandex --> The user earned the reward." + YandexVideo.this.getLogString());
                    YandexVideo.this.onReward();
                }
            });
            this.mRewardedAd.show(activity);
        }
    }

    @Override
    public void onVideoStartLoad() {
        if (this.mRewardedAdLoader == null) {
            adFailedToLoad(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        } else {
            ExistsCheck.initYandex(new InitializationListener() {
                @Override
                public final void onInitializationCompleted() {
                    this.a.lambda$onVideoStartLoad$0();
                }
            });
        }
    }
}
