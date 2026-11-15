package com.hisavana.admoblibrary.excuter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.hisavana.admoblibrary.check.ExistsCheck;
import com.hisavana.admoblibrary.util.PlatformUtil;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.ul4;
import defpackage.zk5;

public class AdmobVideo extends BaseVideo {
    public RewardedAd a;
    public RewardedAdLoadCallback b;
    public ExistsCheck.a c;

    public class a extends RewardedAdLoadCallback {
        public a() {
        }

        @Override
        public void onAdLoaded(RewardedAd rewardedAd) {
            AdmobVideo.this.a = rewardedAd;
            if (rewardedAd.getResponseInfo().getLoadedAdapterResponseInfo() == null) {
                AdLogUtil.Log().d("AdmobVideo", "AdmobVideo --> Video Ad was loaded." + AdmobVideo.this.getLogString());
            } else {
                String adSourceName = rewardedAd.getResponseInfo().getLoadedAdapterResponseInfo().getAdSourceName();
                AdLogUtil.Log().d("AdmobVideo", "AdmobVideo --> Video Ad was loaded." + AdmobVideo.this.getLogString() + "\n----->> mediator source : " + adSourceName);
                AdmobVideo.this.setMediatorInfo(adSourceName, null);
            }
            AdmobVideo.this.adLoaded();
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            AdmobVideo.this.a = null;
            AdLogUtil.Log().w("AdmobVideo", "AdmobVideo --> ad load failed, error :" + loadAdError.toString() + AdmobVideo.this.getLogString());
            AdmobVideo.this.adFailedToLoad(new TAdErrorCode(loadAdError.getCode(), loadAdError.getMessage()));
        }
    }

    public class b implements ExistsCheck.a {
        public b() {
        }

        @Override
        public void a() {
            AdmobVideo.this.c = null;
            if (((BaseAd) AdmobVideo.this).mNetwork == null || TextUtils.isEmpty(((BaseAd) AdmobVideo.this).mNetwork.getCodeSeatId()) || AdmobVideo.this.b == null) {
                AdmobVideo.this.adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, "rewardedAdLoadCallback or codeSeatId is null"));
                return;
            }
            Context contextH = zk5.h();
            if (contextH == null) {
                contextH = ul4.a();
            }
            RewardedAd.load(contextH, ((BaseAd) AdmobVideo.this).mNetwork.getCodeSeatId(), PlatformUtil.a(), AdmobVideo.this.b);
        }

        @Override
        public void b() {
            AdmobVideo.this.c = null;
            AdmobVideo.this.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    public class c extends FullScreenContentCallback {
        public c() {
        }

        @Override
        public void onAdClicked() {
            super.onAdClicked();
            AdmobVideo.this.adClicked(null);
        }

        @Override
        public void onAdDismissedFullScreenContent() {
            AdmobVideo.this.a = null;
            AdLogUtil.Log().d("AdmobVideo", "AdmobVideo --> video is adClosed");
            AdmobVideo.this.adClosed();
        }

        @Override
        public void onAdFailedToShowFullScreenContent(AdError adError) {
            AdLogUtil.Log().w("AdmobVideo", "AdmobVideo --> Ad failed to show." + AdmobVideo.this.getLogString());
            AdmobVideo.this.a = null;
            if (adError != null) {
                AdmobVideo.this.onAdShowError(new TAdErrorCode(adError.getCode(), adError.getMessage()));
            }
        }

        @Override
        public void onAdShowedFullScreenContent() {
            AdLogUtil.Log().d("AdmobVideo", "AdmobVideo --> Ad was shown." + AdmobVideo.this.getLogString());
            AdmobVideo.this.adImpression(null);
        }
    }

    public class d implements OnPaidEventListener {
        public d() {
        }

        @Override
        public void onPaidEvent(AdValue adValue) {
            if (adValue == null) {
                return;
            }
            long valueMicros = adValue.getValueMicros();
            String currencyCode = adValue.getCurrencyCode();
            int precisionType = adValue.getPrecisionType();
            AdLogUtil.Log().d("AdmobVideo", "onPaidEvent valueMicros " + valueMicros + ",currencyCode " + currencyCode + ",precisionType " + precisionType);
            AdmobVideo.this.admobShowPriceTracking((float) valueMicros, currencyCode, precisionType);
            AdmobVideo.this.onAdditionalShowed(valueMicros, currencyCode, precisionType);
        }
    }

    public class e implements OnUserEarnedRewardListener {
        public e() {
        }

        @Override
        public void onUserEarnedReward(RewardItem rewardItem) {
            AdLogUtil.Log().d("AdmobVideo", "AdmobVideo --> The user earned the reward." + AdmobVideo.this.getLogString());
            AdmobVideo.this.onReward();
        }
    }

    public AdmobVideo(Context context, Network network) {
        super(context, network);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        if (this.a != null) {
            this.a = null;
        }
        AdLogUtil.Log().d("AdmobVideo", "AdmobVideo --> destroy" + getLogString());
        if (this.b != null) {
            this.b = null;
        }
        this.c = null;
    }

    @Override
    public void initVideo() {
        this.b = new a();
    }

    @Override
    public boolean isLoaded() {
        return this.a != null;
    }

    @Override
    public void onVideoShow(Activity activity) {
        if (activity == null) {
            AdLogUtil.Log().w("AdmobVideo", "AdmobVideo --> onVideoShow null == activity " + getLogString());
            return;
        }
        RewardedAd rewardedAd = this.a;
        if (rewardedAd == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().w("AdmobVideo", "AdmobVideo --> The rewarded ad wasn't ready yet." + getLogString());
            return;
        }
        try {
            rewardedAd.setFullScreenContentCallback(new c());
            AdLogUtil.Log().d("AdmobVideo", " activity is finish =" + activity.isFinishing());
            this.a.setOnPaidEventListener(new d());
            this.a.show(activity, new e());
        } catch (Exception e2) {
            e2.printStackTrace();
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, e2.getMessage()));
            AdLogUtil.Log().e("AdmobVideo", "AdmobVideo --> onVideoShow 展示异常" + Log.getStackTraceString(e2) + getLogString());
        }
    }

    @Override
    public void onVideoStartLoad() {
        try {
            this.c = new b();
            ExistsCheck.a(ul4.a(), this.c);
        } catch (Exception e2) {
            adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, e2.getMessage()));
            AdLogUtil.Log().e("AdmobVideo", "onVideoStartLoad " + Log.getStackTraceString(e2));
        }
    }

    @Override
    public boolean supportTimer() {
        return false;
    }
}
