package com.hisavana.fblibrary.excuter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.fblibrary.excuter.check.ExistsCheck;
import com.hisavana.fblibrary.excuter.util.PltatformUtil;
import defpackage.ul4;

public class FanInterstitial extends BaseInterstitial {
    public InterstitialAd a;
    public InterstitialAdListener b;

    public class a implements InterstitialAdListener {
        public a() {
        }

        @Override
        public void onAdClicked(Ad ad) {
            AdLogUtil.Log().d("FanInterstitial", "interstitial is click" + FanInterstitial.this.getLogString());
            FanInterstitial.this.adClicked(null);
        }

        @Override
        public void onAdLoaded(Ad ad) {
            AdLogUtil.Log().d("FanInterstitial", "interstitial is Loaded" + FanInterstitial.this.getLogString());
            FanInterstitial.this.adLoaded();
        }

        @Override
        public void onError(Ad ad, AdError adError) {
            AdLogUtil.Log().w("FanInterstitial", "interstitial is error, error code is " + adError.getErrorCode() + ", error msg is " + adError.getErrorMessage() + FanInterstitial.this.getLogString());
            FanInterstitial.this.adFailedToLoad(new TAdErrorCode(adError.getErrorCode(), adError.getErrorMessage()));
        }

        @Override
        public void onInterstitialDismissed(Ad ad) {
            AdLogUtil.Log().d("FanInterstitial", "interstitial close" + FanInterstitial.this.getLogString());
            FanInterstitial.this.adClosed();
        }

        @Override
        public void onInterstitialDisplayed(Ad ad) {
            AdLogUtil.Log().d("FanInterstitial", "interstitial ad show" + FanInterstitial.this.getLogString());
        }

        @Override
        public void onLoggingImpression(Ad ad) {
            FanInterstitial.this.adImpression(null);
        }
    }

    public FanInterstitial(Context context, Network network) {
        super(context, network);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        InterstitialAd interstitialAd = this.a;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.a = null;
        }
        AdLogUtil.Log().d("FanInterstitial", "destroyAd " + getLogString());
    }

    @Override
    public void initInterstitial() {
        if (this.a != null || this.mNetwork == null) {
            return;
        }
        this.a = new InterstitialAd(ul4.a(), this.mNetwork.getCodeSeatId());
        this.b = new a();
    }

    @Override
    public boolean isExpired() {
        InterstitialAd interstitialAd = this.a;
        if (interstitialAd != null) {
            return interstitialAd.isAdInvalidated() || super.isExpired();
        }
        return super.isExpired();
    }

    @Override
    public boolean isLoaded() {
        InterstitialAd interstitialAd = this.a;
        return interstitialAd != null && interstitialAd.isAdLoaded();
    }

    @Override
    public boolean isSupportRtBidding() {
        return true;
    }

    @Override
    public boolean isSupportStopRequest() {
        return true;
    }

    @Override
    public void loadAd() {
        a();
    }

    @Override
    public void onInterstitialShow(Activity activity) {
        InterstitialAd interstitialAd = this.a;
        if (interstitialAd != null) {
            interstitialAd.show();
        } else {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("FanInterstitial", "onInterstitialShow show error,mInterstitialAd is null");
        }
    }

    @Override
    public void onInterstitialStartLoad() {
        InterstitialAd interstitialAd = this.a;
        if (interstitialAd == null || interstitialAd.isAdLoaded()) {
            return;
        }
        post(PltatformUtil.handler, new Runnable() {

            public class a implements AudienceNetworkAds.InitListener {
                public final long a;

                public a(long j) {
                    this.a = j;
                }

                @Override
                public void onInitialized(AudienceNetworkAds.InitResult initResult) {
                    AdLogUtil.Log().d("FanInterstitial", "onInitialized " + (System.currentTimeMillis() - this.a));
                    if (initResult == null || !initResult.isSuccess() || FanInterstitial.this.a == null || ((BaseAd) FanInterstitial.this).mNetwork == null) {
                        FanInterstitial.this.adFailedToLoad(new TAdErrorCode(30001, initResult == null ? "" : initResult.getMessage()));
                        return;
                    }
                    if (TextUtils.isEmpty(((BaseAd) FanInterstitial.this).mNetwork.getBidInfo() != null ? ((BaseAd) FanInterstitial.this).mNetwork.getBidInfo().getPayload() : null)) {
                        FanInterstitial.this.a.loadAd(FanInterstitial.this.a.buildLoadAdConfig().withAdListener(FanInterstitial.this.b).build());
                    } else {
                        FanInterstitial.this.a.loadAd(FanInterstitial.this.a.buildLoadAdConfig().withAdListener(FanInterstitial.this.b).withBid(((BaseAd) FanInterstitial.this).mNetwork.getBidInfo().getPayload()).build());
                        ((BaseAd) FanInterstitial.this).mNetwork.setBidInfo(null);
                    }
                }
            }

            @Override
            public void run() {
                try {
                    ExistsCheck.initFan(ul4.a(), new a(System.currentTimeMillis()));
                } catch (Exception e) {
                    AdLogUtil.Log().e("FanInterstitial", "onInterstitialStartLoad " + Log.getStackTraceString(e));
                }
            }
        });
    }

    public final void a() {
        super.loadAd();
    }
}
