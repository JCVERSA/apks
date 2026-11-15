package defpackage;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.AdapterResponseInfo;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.hisavana.admoblibrary.check.ExistsCheck;
import com.hisavana.admoblibrary.util.PlatformUtil;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseInterstitialRewardedVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;

public class p8 extends BaseInterstitialRewardedVideo {
    public RewardedInterstitialAd k;
    public RewardedInterstitialAdLoadCallback l;
    public ExistsCheck.a m;

    public class a extends RewardedInterstitialAdLoadCallback {
        public a() {
        }

        @Override
        public void onAdLoaded(RewardedInterstitialAd rewardedInterstitialAd) {
            p8.this.k = rewardedInterstitialAd;
            AdapterResponseInfo loadedAdapterResponseInfo = rewardedInterstitialAd.getResponseInfo().getLoadedAdapterResponseInfo();
            if (loadedAdapterResponseInfo == null) {
                AdLogUtil.Log().d("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> Video Ad was loaded." + p8.this.getLogString());
            } else {
                String adSourceName = loadedAdapterResponseInfo.getAdSourceName();
                AdLogUtil.Log().d("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> Video Ad was loaded." + p8.this.getLogString() + "\n----->>mediator source: " + adSourceName);
                p8.this.setMediatorInfo(adSourceName, null);
            }
            p8.this.adLoaded();
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            p8.this.k = null;
            AdLogUtil.Log().w("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> ad load failed, error :" + loadAdError.toString() + p8.this.getLogString());
            p8.this.adFailedToLoad(new TAdErrorCode(loadAdError.getCode(), loadAdError.getMessage()));
        }
    }

    public class b implements ExistsCheck.a {
        public b() {
        }

        @Override
        public void a() {
            p8.this.m = null;
            if (((BaseAd) p8.this).mNetwork == null || TextUtils.isEmpty(((BaseAd) p8.this).mNetwork.getCodeSeatId()) || p8.this.l == null) {
                p8.this.adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, "rewardedAdLoadCallback or codeSeatId is null"));
            } else {
                RewardedInterstitialAd.load(ul4.a(), ((BaseAd) p8.this).mNetwork.getCodeSeatId(), PlatformUtil.a(), p8.this.l);
            }
        }

        @Override
        public void b() {
            p8.this.m = null;
            p8.this.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    public class c extends FullScreenContentCallback {
        public c() {
        }

        @Override
        public void onAdClicked() {
            super.onAdClicked();
            p8.this.adClicked(null);
        }

        @Override
        public void onAdDismissedFullScreenContent() {
            p8.this.k = null;
            AdLogUtil.Log().d("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> video is adClosed");
            p8.this.adClosed();
        }

        @Override
        public void onAdFailedToShowFullScreenContent(AdError adError) {
            AdLogUtil.Log().w("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> Ad failed to show." + p8.this.getLogString());
            p8.this.k = null;
            if (adError != null) {
                p8.this.onAdShowError(new TAdErrorCode(adError.getCode(), adError.getMessage()));
            }
        }

        @Override
        public void onAdShowedFullScreenContent() {
            AdLogUtil.Log().d("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> Ad was shown." + p8.this.getLogString());
            p8.this.adImpression(null);
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
            AdLogUtil.Log().d("AdmobInterstitiaVideo", "onPaidEvent valueMicros " + valueMicros + ",currencyCode " + currencyCode + ",precisionType " + precisionType);
            p8.this.admobShowPriceTracking((float) valueMicros, currencyCode, precisionType);
            p8.this.onAdditionalShowed(valueMicros, currencyCode, precisionType);
        }
    }

    public class e implements OnUserEarnedRewardListener {
        public e() {
        }

        @Override
        public void onUserEarnedReward(RewardItem rewardItem) {
            AdLogUtil.Log().d("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> The user earned the reward." + p8.this.getLogString());
            p8.this.onReward();
        }
    }

    public p8(Context context, Network network) {
        super(context, network);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        if (this.k != null) {
            this.k = null;
        }
        AdLogUtil.Log().d("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> destroy" + getLogString());
        if (this.l != null) {
            this.l = null;
        }
        this.m = null;
    }

    @Override
    public void initVideo() {
        this.l = new a();
    }

    @Override
    public boolean isLoaded() {
        return this.k != null;
    }

    @Override
    public void onVideoShow(Activity activity) {
        if (activity == null) {
            AdLogUtil.Log().w("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> onVideoShow null == activity " + getLogString());
            return;
        }
        RewardedInterstitialAd rewardedInterstitialAd = this.k;
        if (rewardedInterstitialAd == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().w("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> The rewarded ad wasn't ready yet." + getLogString());
            return;
        }
        try {
            rewardedInterstitialAd.setFullScreenContentCallback(new c());
            AdLogUtil.Log().d("AdmobInterstitiaVideo", " activity is finish =" + activity.isFinishing());
            this.k.setOnPaidEventListener(new d());
            this.k.show(activity, new e());
        } catch (Exception e2) {
            e2.printStackTrace();
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, e2.getMessage()));
            AdLogUtil.Log().e("AdmobInterstitiaVideo", "AdmobInterstitialVideo --> onVideoShow 展示异常" + Log.getStackTraceString(e2) + getLogString());
        }
    }

    @Override
    public void onVideoStartLoad() {
        try {
            this.m = new b();
            ExistsCheck.a(ul4.a(), this.m);
        } catch (Exception e2) {
            adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, e2.getMessage()));
            AdLogUtil.Log().e("AdmobInterstitiaVideo", "onVideoStartLoad " + Log.getStackTraceString(e2));
        }
    }

    @Override
    public boolean supportTimer() {
        return false;
    }
}
