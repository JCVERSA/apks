package com.hisavana.fblibrary.excuter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.fblibrary.excuter.check.ExistsCheck;
import defpackage.ul4;
import java.lang.ref.WeakReference;

public class FanVideo extends BaseVideo {
    public RewardedVideoAd a;
    public RewardedVideoAdListener b;

    public class a implements RewardedVideoAdListener {
        public a() {
        }

        @Override
        public void onAdClicked(Ad ad) {
            AdLogUtil.Log().d("video", "FanVideo --> Ad onAdClicked." + FanVideo.this.getLogString());
            FanVideo.this.adClicked(null);
        }

        @Override
        public void onAdLoaded(Ad ad) {
            AdLogUtil.Log().d("video", "FanVideo --> Video Ad was loaded." + FanVideo.this.getLogString());
            FanVideo.this.adLoaded();
        }

        @Override
        public void onError(Ad ad, AdError adError) {
            if (adError != null) {
                AdLogUtil.Log().w("video", "FanVideo --> ad load failed, error :" + adError.getErrorMessage() + FanVideo.this.getLogString());
                FanVideo.this.adFailedToLoad(new TAdErrorCode(adError.getErrorCode(), adError.getErrorMessage()));
            }
            FanVideo.this.a = null;
        }

        @Override
        public void onLoggingImpression(Ad ad) {
            AdLogUtil.Log().d("video", "FanVideo --> Ad was shown." + FanVideo.this.getLogString());
            FanVideo.this.adImpression(null);
        }

        @Override
        public void onRewardedVideoClosed() {
            FanVideo.this.a = null;
            AdLogUtil.Log().d("video", "FanVideo --> video is adClosed" + FanVideo.this.getLogString());
            FanVideo.this.adClosed();
        }

        @Override
        public void onRewardedVideoCompleted() {
            AdLogUtil.Log().d("video", "FanVideo --> The user earned the reward." + FanVideo.this.getLogString());
            FanVideo.this.onReward();
        }
    }

    public class b implements AudienceNetworkAds.InitListener {
        public final long a;

        public b(long j) {
            this.a = j;
        }

        @Override
        public void onInitialized(AudienceNetworkAds.InitResult initResult) {
            AdLogUtil.Log().d("FanVideo", "onInitialized " + (System.currentTimeMillis() - this.a));
            if (initResult == null || !initResult.isSuccess() || FanVideo.this.a == null || ((BaseAd) FanVideo.this).mNetwork == null) {
                FanVideo.this.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
                return;
            }
            try {
                if (TextUtils.isEmpty(((BaseAd) FanVideo.this).mNetwork.getBidInfo() != null ? ((BaseAd) FanVideo.this).mNetwork.getBidInfo().getPayload() : null)) {
                    FanVideo.this.a.loadAd(FanVideo.this.a.buildLoadAdConfig().withAdListener(FanVideo.this.b).build());
                } else {
                    FanVideo.this.a.loadAd(FanVideo.this.a.buildLoadAdConfig().withBid(((BaseAd) FanVideo.this).mNetwork.getBidInfo().getPayload()).withAdListener(FanVideo.this.b).build());
                    ((BaseAd) FanVideo.this).mNetwork.setBidInfo(null);
                }
            } catch (Exception e) {
                AdLogUtil.Log().e("FanVideo", "onVideoStartLoad " + Log.getStackTraceString(e));
            }
        }
    }

    public FanVideo(Context context, Network network) {
        super(context, network);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        if (this.a != null) {
            this.a = null;
        }
        if (this.b != null) {
            this.b = null;
        }
        AdLogUtil.Log().d("video", "destroyAd " + getLogString());
    }

    @Override
    public void initVideo() {
        Context context;
        Network network;
        WeakReference<Context> weakReference = this.mContext;
        if (weakReference == null || weakReference.get() == null || (context = this.mContext.get()) == null || (network = this.mNetwork) == null) {
            return;
        }
        this.a = new RewardedVideoAd(context, network.getCodeSeatId());
        this.b = new a();
    }

    @Override
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        RewardedVideoAd rewardedVideoAd = this.a;
        if (rewardedVideoAd != null) {
            return rewardedVideoAd.isAdInvalidated();
        }
        return false;
    }

    @Override
    public boolean isLoaded() {
        return this.a != null;
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
    public void onVideoShow(Activity activity) {
        if (this.a == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("video", "FanVideo --> The rewarded ad wasn't ready yet.");
            return;
        }
        AdLogUtil.Log().d("video", "FanVideo --> onVideoShow." + getLogString());
        this.a.show();
    }

    @Override
    public void onVideoStartLoad() {
        if (this.a == null || this.b == null) {
            return;
        }
        try {
            ExistsCheck.initFan(ul4.a(), new b(System.currentTimeMillis()));
        } catch (Exception e) {
            AdLogUtil.Log().e("FanVideo", Log.getStackTraceString(e));
        }
    }

    public final void a() {
        super.loadAd();
    }
}
