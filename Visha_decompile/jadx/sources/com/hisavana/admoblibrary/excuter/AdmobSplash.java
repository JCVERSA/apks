package com.hisavana.admoblibrary.excuter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.hisavana.admoblibrary.check.ExistsCheck;
import com.hisavana.admoblibrary.util.PlatformUtil;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.ul4;

public class AdmobSplash extends BaseSplash {
    private static final String TAG = "AdmobSplash";
    private static boolean isShowingAd = false;
    private AppOpenAd appOpenAd;
    private Activity currentActivity;
    private AppOpenAd.AppOpenAdLoadCallback loadCallback;
    private ExistsCheck.a mInitListener;

    public class a extends AppOpenAd.AppOpenAdLoadCallback {

        public class C0118a extends FullScreenContentCallback {
            public C0118a() {
            }

            @Override
            public void onAdClicked() {
                super.onAdClicked();
                AdmobSplash.this.adClicked(null);
            }

            @Override
            public void onAdDismissedFullScreenContent() {
                super.onAdDismissedFullScreenContent();
                AdmobSplash.this.onSkipClick();
                AdmobSplash.this.appOpenAd = null;
                boolean unused = AdmobSplash.isShowingAd = false;
                AdLogUtil.Log().d(AdmobSplash.TAG, "admob splashview onAdClicked" + AdmobSplash.this.getLogString());
            }

            @Override
            public void onAdFailedToShowFullScreenContent(AdError adError) {
                super.onAdFailedToShowFullScreenContent(adError);
                if (adError != null) {
                    AdmobSplash.this.adFailedToLoad(new TAdErrorCode(adError.getCode(), adError.getMessage()));
                    AdLogUtil.Log().d(AdmobSplash.TAG, "admob splashview show fail:" + adError.getMessage() + AdmobSplash.this.getLogString());
                }
            }

            @Override
            public void onAdImpression() {
                super.onAdImpression();
                AdLogUtil.Log().d(AdmobSplash.TAG, "onAdImpression");
            }

            @Override
            public void onAdShowedFullScreenContent() {
                super.onAdShowedFullScreenContent();
                AdmobSplash.this.adImpression(null);
                boolean unused = AdmobSplash.isShowingAd = true;
                AdLogUtil.Log().d(AdmobSplash.TAG, "admob splashview onAdShow" + AdmobSplash.this.getLogString());
            }
        }

        public a() {
        }

        @Override
        public void onAdLoaded(AppOpenAd appOpenAd) {
            if (appOpenAd == null) {
                return;
            }
            AdmobSplash.this.appOpenAd = appOpenAd;
            if (appOpenAd.getResponseInfo().getLoadedAdapterResponseInfo() == null) {
                AdLogUtil.Log().d(AdmobSplash.TAG, "admob appOpenAd onAdLoaded" + AdmobSplash.this.getLogString());
            } else {
                String adSourceName = appOpenAd.getResponseInfo().getLoadedAdapterResponseInfo().getAdSourceName();
                AdLogUtil.Log().d(AdmobSplash.TAG, "admob appOpenAd onAdLoaded" + AdmobSplash.this.getLogString() + "\n----->>mediator source: " + adSourceName);
                AdmobSplash.this.setMediatorInfo(adSourceName, null);
            }
            AdmobSplash.this.adLoaded();
            AdmobSplash.this.appOpenAd.setFullScreenContentCallback(new C0118a());
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            if (loadAdError != null) {
                AdmobSplash.this.adFailedToLoad(new TAdErrorCode(loadAdError.getCode(), loadAdError.getMessage()));
                AdLogUtil.Log().w(AdmobSplash.TAG, "admob splashview onError:" + loadAdError.toString() + AdmobSplash.this.getLogString());
            }
        }
    }

    public class b implements ExistsCheck.a {
        public b() {
        }

        @Override
        public void a() {
            AdmobSplash.this.mInitListener = null;
            if (AdmobSplash.this.isAdAvailable() || ((BaseAd) AdmobSplash.this).mNetwork == null || TextUtils.isEmpty(((BaseAd) AdmobSplash.this).mNetwork.getCodeSeatId())) {
                return;
            }
            AppOpenAd.load(ul4.a(), ((BaseAd) AdmobSplash.this).mNetwork.getCodeSeatId(), PlatformUtil.a(), AdmobSplash.this.loadCallback);
        }

        @Override
        public void b() {
            AdmobSplash.this.mInitListener = null;
            AdmobSplash.this.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    public class c implements OnPaidEventListener {
        public c() {
        }

        @Override
        public void onPaidEvent(AdValue adValue) {
            if (adValue == null) {
                return;
            }
            long valueMicros = adValue.getValueMicros();
            String currencyCode = adValue.getCurrencyCode();
            int precisionType = adValue.getPrecisionType();
            AdLogUtil.Log().d(AdmobSplash.TAG, "onPaidEvent valueMicros " + valueMicros + ",currencyCode " + currencyCode + ",precisionType " + precisionType);
            AdmobSplash.this.admobShowPriceTracking((float) valueMicros, currencyCode, precisionType);
            AdmobSplash.this.onAdditionalShowed(valueMicros, currencyCode, precisionType);
        }
    }

    public AdmobSplash(Context context, Network network) {
        super(context, network);
        this.appOpenAd = null;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AppOpenAd appOpenAd = this.appOpenAd;
        if (appOpenAd != null) {
            appOpenAd.setFullScreenContentCallback(null);
            this.appOpenAd = null;
        }
        if (this.loadCallback != null) {
            this.loadCallback = null;
        }
        this.mInitListener = null;
        AdLogUtil.Log().d(TAG, "destroy " + getLogString());
    }

    public void fetchAd() {
        this.loadCallback = new a();
        try {
            this.mInitListener = new b();
            ExistsCheck.a(ul4.a(), this.mInitListener);
        } catch (Exception e) {
            e.printStackTrace();
            adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, Log.getStackTraceString(e)));
        }
    }

    @Override
    public View getSplash() {
        if (ul4.a() != null) {
            return new View(ul4.a().getApplicationContext());
        }
        return null;
    }

    public boolean isAdAvailable() {
        return this.appOpenAd != null;
    }

    @Override
    public void onSplashShow() {
        showAdIfAvailable();
    }

    @Override
    public void onSplashStartLoad() {
        fetchAd();
    }

    public void showAdIfAvailable() {
        if (isShowingAd || !isAdAvailable()) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            onTimeReach();
            AdLogUtil.Log().e(TAG, "showAdIfAvailable,show error,ad is showing or ad is not available");
            return;
        }
        try {
            this.appOpenAd.setOnPaidEventListener(new c());
            this.appOpenAd.show(this.currentActivity);
        } catch (Exception e) {
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, e.getMessage()));
            onTimeReach();
            AdLogUtil.Log().e(TAG, "showAdIfAvailable " + Log.getStackTraceString(e));
        }
    }

    @Override
    public boolean supportTimer() {
        return false;
    }
}
