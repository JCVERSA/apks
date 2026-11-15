package com.hisavana.admoblibrary.excuter;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.hisavana.admoblibrary.check.ExistsCheck;
import com.hisavana.admoblibrary.util.PlatformUtil;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.ul4;
import java.lang.ref.WeakReference;

public class AdmobBanner extends BaseBanner<AdView> {
    public AdView a;
    public ExistsCheck.a b;
    public final int c;
    public int d;

    public class a extends AdListener {
        public a() {
        }

        @Override
        public void onAdClicked() {
            AdLogUtil.Log().d("AdmobBanner", "onAdClicked");
            super.onAdClicked();
            AdmobBanner.this.adClicked(null);
        }

        @Override
        public void onAdClosed() {
            if (AdmobBanner.this.d == 0) {
                AdmobBanner.this.adClosed();
            }
            AdLogUtil.Log().d("AdmobBanner", "onAdClosed bannerType " + AdmobBanner.this.d);
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            AdLogUtil.Log().w("AdmobBanner", "banner onAdFailedToLoad:" + loadAdError.toString() + AdmobBanner.this.getLogString());
            AdmobBanner.this.adFailedToLoad(new TAdErrorCode(loadAdError.getCode(), loadAdError.getMessage()));
        }

        @Override
        public void onAdImpression() {
            AdLogUtil.Log().d("AdmobBanner", "onAdImpression");
            super.onAdImpression();
            AdmobBanner.this.adImpression(null);
        }

        @Override
        public void onAdLoaded() {
            ResponseInfo responseInfo = AdmobBanner.this.a.getResponseInfo();
            if (responseInfo == null || responseInfo.getLoadedAdapterResponseInfo() == null) {
                AdLogUtil.Log().d("AdmobBanner", "banner onAdLoaded" + AdmobBanner.this.getLogString());
            } else {
                String adSourceName = responseInfo.getLoadedAdapterResponseInfo().getAdSourceName();
                AdLogUtil.Log().d("AdmobBanner", "banner onAdLoaded" + AdmobBanner.this.getLogString() + "\n----->> mediator source : " + adSourceName);
                AdmobBanner.this.setMediatorInfo(adSourceName, null);
            }
            AdmobBanner.this.adLoaded();
        }
    }

    public class b implements ExistsCheck.a {
        public b() {
        }

        @Override
        public void a() {
            AdmobBanner.this.b = null;
            if (AdmobBanner.this.a != null) {
                AdmobBanner.this.a.loadAd(PlatformUtil.a(AdmobBanner.this.d));
            } else {
                AdLogUtil.Log().e("AdmobBanner", "onBannerLoad adView is null");
                AdmobBanner.this.adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, "adView is null"));
            }
        }

        @Override
        public void b() {
            AdmobBanner.this.b = null;
            AdmobBanner.this.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    public AdmobBanner(Context context, Network network, int i, int i2) {
        super(context, network);
        this.c = i;
        this.d = i2;
        AdLogUtil.Log().d("AdmobBanner", "bannerSize:=" + i + getLogString());
    }

    @Override
    public boolean destroyFoldAd() {
        super.destroyFoldAd();
        AdLogUtil.Log().d("AdmobBanner", "destroyFoldAd mBannerType " + this.d);
        if (this.d == 0) {
            return false;
        }
        destroyAd();
        return true;
    }

    @Override
    public boolean isCollapsible() {
        AdView adView = this.a;
        return adView != null && adView.isCollapsible();
    }

    @Override
    public void onBannerDestroy() {
        try {
            AdView adView = this.a;
            if (adView != null) {
                adView.setAdListener(null);
                this.a.setOnPaidEventListener(null);
                this.a.destroy();
                this.a = null;
            }
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdmobBanner", Log.getStackTraceString(th));
            this.a = null;
        }
        this.b = null;
        AdLogUtil.Log().d("AdmobBanner", "banner destroy" + getLogString());
    }

    @Override
    public void onBannerLoad() {
        try {
            this.b = new b();
            ExistsCheck.a(ul4.a(), this.b);
        } catch (Throwable th) {
            th.printStackTrace();
            adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, Log.getStackTraceString(th)));
        }
    }

    @Override
    public void showBanner() {
        AdView adView = this.a;
        if (adView != null) {
            adView.setVisibility(0);
        }
    }

    @Override
    public boolean supportTimer() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x005a  */
    @Override
    public AdView getBanner() {
        WeakReference<Context> weakReference = this.mContext;
        if (weakReference == null || weakReference.get() == null) {
            return this.a;
        }
        Context applicationContext = this.mContext.get();
        if (this.a == null && applicationContext != null && this.mNetwork != null) {
            if (!(applicationContext instanceof Activity)) {
                this.d = 0;
            }
            if (this.d == 0) {
                applicationContext = applicationContext.getApplicationContext();
            }
            AdView adView = new AdView(applicationContext);
            this.a = adView;
            adView.setAdUnitId(this.mNetwork.getCodeSeatId());
            int i = this.c;
            if (i == 0) {
                this.a.setAdSize(a());
            } else if (i == 1) {
                this.a.setAdSize(AdSize.LARGE_BANNER);
            } else if (i == 2) {
                this.a.setAdSize(AdSize.MEDIUM_RECTANGLE);
            } else if (i != 3) {
                this.a.setAdSize(AdSize.BANNER);
            } else {
                this.a.setAdSize(AdSize.LARGE_BANNER);
            }
            this.a.setAdListener(new a());
            this.a.setOnPaidEventListener(new OnPaidEventListener() {
                @Override
                public final void onPaidEvent(AdValue adValue) {
                    this.a.a(adValue);
                }
            });
        }
        return this.a;
    }

    public final AdSize a() {
        AdSize currentOrientationAnchoredAdaptiveBannerAdSize;
        AdSize adSize = AdSize.BANNER;
        WeakReference<Context> weakReference = this.mContext;
        if (weakReference == null || weakReference.get() == null) {
            return adSize;
        }
        Context context = this.mContext.get();
        if (context instanceof Activity) {
            WindowManager windowManager = ((Activity) context).getWindowManager();
            Display defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
            if (defaultDisplay == null) {
                return adSize;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            float f = displayMetrics.widthPixels;
            float f2 = displayMetrics.density;
            if (f <= 0.0f || f2 <= 0.0f) {
                return adSize;
            }
            currentOrientationAnchoredAdaptiveBannerAdSize = AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, (int) (f / f2));
        } else {
            currentOrientationAnchoredAdaptiveBannerAdSize = adSize;
        }
        return currentOrientationAnchoredAdaptiveBannerAdSize != null ? currentOrientationAnchoredAdaptiveBannerAdSize : adSize;
    }

    public final void a(AdValue adValue) {
        long valueMicros = adValue.getValueMicros();
        String currencyCode = adValue.getCurrencyCode();
        int precisionType = adValue.getPrecisionType();
        AdLogUtil.Log().d("AdmobBanner", "onPaidEvent valueMicros " + valueMicros + ",currencyCode " + currencyCode + ",precisionType " + precisionType);
        admobShowPriceTracking((float) valueMicros, currencyCode, precisionType);
        onAdditionalShowed(valueMicros, currencyCode, precisionType);
    }
}
