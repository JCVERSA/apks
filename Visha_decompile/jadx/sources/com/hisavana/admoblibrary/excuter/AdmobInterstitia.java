package com.hisavana.admoblibrary.excuter;

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
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.hisavana.admoblibrary.check.ExistsCheck;
import com.hisavana.admoblibrary.util.PlatformUtil;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;
import defpackage.ul4;
import defpackage.zk5;

public class AdmobInterstitia extends BaseInterstitial {
    public InterstitialAd a;
    public InterstitialAdLoadCallback b;
    public ExistsCheck.a c;

    public class a implements ExistsCheck.a {
        public a() {
        }

        @Override
        public void a() {
            AdmobInterstitia.this.c = null;
            if (((BaseAd) AdmobInterstitia.this).mNetwork == null || TextUtils.isEmpty(((BaseAd) AdmobInterstitia.this).mNetwork.getCodeSeatId()) || AdmobInterstitia.this.b == null) {
                AdmobInterstitia.this.adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, "onInterstitialStartLoad loadCallback or codeSeatId is null"));
                AdLogUtil.Log().e("AdmobInterstitia", "onInterstitialStartLoad loadCallback or codeSeatId is null");
            } else {
                Context contextH = zk5.h();
                if (contextH == null) {
                    contextH = ul4.a();
                }
                InterstitialAd.load(contextH, ((BaseAd) AdmobInterstitia.this).mNetwork.getCodeSeatId(), PlatformUtil.a(), AdmobInterstitia.this.b);
            }
        }

        @Override
        public void b() {
            AdmobInterstitia.this.c = null;
            AdmobInterstitia.this.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    public class b extends InterstitialAdLoadCallback {

        public class a extends FullScreenContentCallback {
            public a() {
            }

            @Override
            public void onAdClicked() {
                super.onAdClicked();
                AdmobInterstitia.this.adClicked(null);
            }

            @Override
            public void onAdDismissedFullScreenContent() {
                super.onAdDismissedFullScreenContent();
                AdmobInterstitia.this.a = null;
                AdLogUtil.Log().d("AdmobInterstitia", "Interstitial is adClosed" + AdmobInterstitia.this.getLogString());
                AdmobInterstitia.this.adClosed();
            }

            @Override
            public void onAdFailedToShowFullScreenContent(AdError adError) {
                super.onAdFailedToShowFullScreenContent(adError);
                AdmobInterstitia.this.a = null;
                if (adError != null) {
                    AdmobInterstitia.this.onAdShowError(new TAdErrorCode(adError.getCode(), adError.getMessage()));
                }
            }

            @Override
            public void onAdImpression() {
                super.onAdImpression();
                AdLogUtil.Log().d("AdmobInterstitia", "Interstitial is onAdImpression" + AdmobInterstitia.this.getLogString());
                AdmobInterstitia.this.adImpression(null);
            }

            @Override
            public void onAdShowedFullScreenContent() {
                super.onAdShowedFullScreenContent();
                AdLogUtil.Log().d("AdmobInterstitia", "Interstitial is onAdShowedFullScreenContent" + AdmobInterstitia.this.getLogString());
            }
        }

        public b() {
        }

        @Override
        public void onAdLoaded(InterstitialAd interstitialAd) {
            super.onAdLoaded(interstitialAd);
            AdapterResponseInfo loadedAdapterResponseInfo = interstitialAd.getResponseInfo().getLoadedAdapterResponseInfo();
            if (loadedAdapterResponseInfo == null) {
                AdLogUtil.Log().d("AdmobInterstitia", "Interstitial is Loaded" + AdmobInterstitia.this.getLogString());
            } else {
                String adSourceName = loadedAdapterResponseInfo.getAdSourceName();
                AdLogUtil.Log().d("AdmobInterstitia", "Interstitial is Loaded" + AdmobInterstitia.this.getLogString() + "\n----->> mediator source : " + adSourceName);
                AdmobInterstitia.this.setMediatorInfo(adSourceName, null);
            }
            AdmobInterstitia.this.a = interstitialAd;
            AdmobInterstitia.this.adLoaded();
            AdmobInterstitia.this.a.setFullScreenContentCallback(new a());
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            AdmobInterstitia.this.a = null;
            if (loadAdError != null) {
                AdLogUtil.Log().w("AdmobInterstitia", "ad load failed, error :" + loadAdError.toString() + AdmobInterstitia.this.getLogString());
                AdmobInterstitia.this.adFailedToLoad(new TAdErrorCode(loadAdError.getCode(), loadAdError.getMessage()));
            }
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
            AdLogUtil.Log().d("AdmobInterstitia", "onPaidEvent valueMicros " + valueMicros + ",currencyCode " + currencyCode + ",precisionType " + precisionType);
            AdmobInterstitia.this.admobShowPriceTracking((float) valueMicros, currencyCode, precisionType);
            AdmobInterstitia.this.onAdditionalShowed(valueMicros, currencyCode, precisionType);
        }
    }

    public AdmobInterstitia(Context context, Network network) {
        super(context, network);
        AdLogUtil.Log().d("AdmobInterstitia", "Admob Interstitial");
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        InterstitialAd interstitialAd = this.a;
        if (interstitialAd != null) {
            interstitialAd.setOnPaidEventListener(null);
            this.a = null;
        }
        AdLogUtil.Log().d("AdmobInterstitia", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
        if (this.b != null) {
            this.b = null;
        }
        this.c = null;
    }

    @Override
    public void initInterstitial() {
        this.b = new b();
    }

    @Override
    public boolean isLoaded() {
        return this.a != null;
    }

    @Override
    public void onInterstitialShow(Activity activity) {
        InterstitialAd interstitialAd = this.a;
        if (interstitialAd != null && activity != null) {
            interstitialAd.setOnPaidEventListener(new c());
            this.a.show(activity);
            return;
        }
        onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        AdLogUtil.Log().e("AdmobInterstitia", "The ad wasn't ready or activity is null. " + getLogString());
    }

    @Override
    public void onInterstitialStartLoad() {
        try {
            this.c = new a();
            ExistsCheck.a(ul4.a(), this.c);
        } catch (Exception e) {
            AdLogUtil.Log().e("AdmobInterstitia", "onInterstitialStartLoad " + Log.getStackTraceString(e));
            adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, Log.getStackTraceString(e)));
        }
    }

    @Override
    public boolean supportTimer() {
        return false;
    }
}
