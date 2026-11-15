package com.hisavana.admoblibrary.excuter;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.hisavana.admoblibrary.check.ExistsCheck;
import com.hisavana.admoblibrary.util.PlatformUtil;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.AdmobInitUtil;
import com.transsion.push.PushConstants;
import defpackage.ul4;
import java.util.List;

public class AdmobNative extends BaseNative {
    public AdLoader a;
    public AdLoader.Builder b;
    public ExistsCheck.a c;
    public Handler d;
    public boolean e;
    public Handler f;
    public AdNativeInfo g;
    public int h;
    public int i;
    public HandlerThread j;

    public class a implements ExistsCheck.a {
        public a() {
        }

        @Override
        public void a() {
            AdmobNative.this.c = null;
            if (((BaseAd) AdmobNative.this).mNetwork == null || TextUtils.isEmpty(((BaseAd) AdmobNative.this).mNetwork.getCodeSeatId())) {
                AdmobNative.this.adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, "codeSeatId is null"));
                return;
            }
            AdmobNative.this.b = new AdLoader.Builder(ul4.a(), ((BaseAd) AdmobNative.this).mNetwork.getCodeSeatId().trim());
            AdLogUtil.Log().d("AdmobNative", "start load native ad");
            AdmobNative.this.a();
            AdmobNative.this.c();
            AdmobNative.this.d();
        }

        @Override
        public void b() {
            AdLogUtil.Log().d("AdmobNative", "failed load native ad");
            AdmobNative.this.c = null;
            AdmobNative.this.adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    public class b extends AdListener {
        public b() {
        }

        @Override
        public void onAdClicked() {
            super.onAdClicked();
            AdmobNative admobNative = AdmobNative.this;
            admobNative.adClicked(admobNative.g);
        }

        @Override
        public void onAdClosed() {
            super.onAdClosed();
            AdmobNative.this.adClosed();
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            AdLogUtil adLogUtilLog = AdLogUtil.Log();
            StringBuilder sb = new StringBuilder();
            sb.append("ad load failed, error ");
            sb.append(loadAdError != null ? loadAdError.toString() : "");
            adLogUtilLog.w("AdmobNative", sb.toString());
            if (AdmobNative.this.a == null) {
                AdLogUtil.Log().d("AdmobNative", " adLoader isLoading");
                return;
            }
            if ((AdmobNative.this.isIconAd() && AdmobNative.this.a.isLoading()) || AdmobNative.this.e) {
                AdLogUtil.Log().d("AdmobNative", " adLoader load fail");
            } else {
                AdmobNative.this.b();
                AdmobNative.this.a(new TAdErrorCode(loadAdError != null ? loadAdError.getCode() : TAdErrorCode.CODE_AD_REQUEST_FAILED, loadAdError != null ? loadAdError.getMessage() : ""));
            }
        }

        @Override
        public void onAdImpression() {
            AdLogUtil.Log().d("AdmobNative", "ad impression");
            AdmobNative admobNative = AdmobNative.this;
            admobNative.adImpression(admobNative.g);
        }
    }

    public AdmobNative(Context context, Network network, int i) {
        super(context, network, i);
        this.b = null;
        this.e = false;
        this.h = 1;
        this.i = 0;
        this.j = AdmobInitUtil.getHanderThread();
        AdmobInitUtil.start();
        this.d = new Handler(this.j.getLooper());
        this.f = new Handler(Looper.getMainLooper());
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        this.a = null;
        b();
        this.g = null;
        this.c = null;
        AdLogUtil.Log().d("AdmobNative", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public void initNative() {
        try {
            this.c = new a();
            ExistsCheck.a(ul4.a(), this.c);
        } catch (Exception e) {
            AdLogUtil.Log().d("AdmobNative", Log.getStackTraceString(e));
            adFailedToLoad(new TAdErrorCode(TAdErrorCode.CODE_AD_REQUEST_FAILED, Log.getStackTraceString(e)));
        }
    }

    @Override
    public boolean isNativeBanner() {
        return false;
    }

    @Override
    public void onNativeAdStartLoad() {
    }

    @Override
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        this.g = adNativeInfo;
        logTrigerShow(adNativeInfo);
        setNativeCloseListener(viewGroup, adNativeInfo);
    }

    @Override
    public void setAdmobMediaAspectRatio(int i) {
        this.i = i;
    }

    @Override
    public void setChoicesPosition(int i) {
        this.h = i;
    }

    @Override
    public boolean supportTimer() {
        return false;
    }

    @Override
    public void unregisterView(@NonNull AdNativeInfo adNativeInfo) {
    }

    public final void d() {
        Handler handler;
        if (this.b == null) {
            AdLogUtil.Log().d("AdmobNative", "builder is null");
            return;
        }
        AdLoader adLoader = this.a;
        if (adLoader == null || adLoader.isLoading()) {
            return;
        }
        try {
            this.a.loadAds(PlatformUtil.a(), this.mAdCount);
            if (!isIconAd() || (handler = this.f) == null) {
                return;
            }
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    AdmobNative.this.e = true;
                    AdmobNative.this.a(TAdErrorCode.ERROR_AD_REQUEST_TIME_OUT);
                }
            }, 30000L);
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdmobNative", Log.getStackTraceString(th));
        }
    }

    public final void b() {
        Handler handler;
        if (!isIconAd() || (handler = this.f) == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
        this.f = null;
    }

    public final void c() {
        this.a = this.b.withAdListener(new b()).build();
    }

    public final void a() {
        NativeAdOptions.Builder videoOptions = new NativeAdOptions.Builder().setVideoOptions(new VideoOptions.Builder().setStartMuted(AdMuteStatus.MUTE_ALL).setClickToExpandRequested(true).build());
        int i = this.h;
        this.b.forNativeAd(new NativeAd.OnNativeAdLoadedListener() {
            @Override
            public final void onNativeAdLoaded(NativeAd nativeAd) {
                this.a.a(nativeAd);
            }
        }).withNativeAdOptions(videoOptions.setAdChoicesPlacement(i != 4 ? i : 1).setMediaAspectRatio(this.i).build());
    }

    public final void a(NativeAd nativeAd) {
        TAdNativeInfo tAdNativeInfoA = null;
        if (nativeAd.getResponseInfo() != null && nativeAd.getResponseInfo().getLoadedAdapterResponseInfo() != null) {
            String adSourceName = nativeAd.getResponseInfo().getLoadedAdapterResponseInfo().getAdSourceName();
            AdLogUtil.Log().d("AdmobNative", "onNativeAdLoaded : " + getLogString() + "\n----->> mediator source : " + adSourceName);
            setMediatorInfo(adSourceName, null);
        }
        if (this.e) {
            try {
                nativeAd.destroy();
                return;
            } catch (Throwable th) {
                AdLogUtil.Log().e("AdmobNative", Log.getStackTraceString(th));
                return;
            }
        }
        if (this.a != null) {
            try {
                tAdNativeInfoA = PlatformUtil.a(nativeAd, this.mAdt, getTtl(), this);
            } catch (Exception e) {
                AdLogUtil.Log().e("AdmobNative", "onNativeAdLoaded " + Log.getStackTraceString(e));
            }
            nativeAd.setOnPaidEventListener(new OnPaidEventListener() {
                @Override
                public final void onPaidEvent(AdValue adValue) {
                    this.a.a(adValue);
                }
            });
            int iFilter = filter(tAdNativeInfoA);
            if (iFilter == 0) {
                this.mNatives.add(tAdNativeInfoA);
            } else {
                AdUtil.release(tAdNativeInfoA);
            }
            AdLoader adLoader = this.a;
            if (adLoader == null || adLoader.isLoading()) {
                return;
            }
            b();
            AdLogUtil.Log().d("AdmobNative", " ad load finish ==" + this.mNatives.size());
            if (!this.mNatives.isEmpty()) {
                adLoaded(this.mNatives);
                return;
            }
            adFailedToLoad(new TAdErrorCode(iFilter, "adMob load failed filter"));
            AdLogUtil.Log().w("AdmobNative", "ad not pass sensitive check or no icon or image filter:" + iFilter);
            return;
        }
        try {
            nativeAd.destroy();
        } catch (Throwable th2) {
            AdLogUtil.Log().e("AdmobNative", Log.getStackTraceString(th2));
        }
        AdLogUtil.Log().w("AdmobNative", "adLoader is null");
    }

    public final void a(AdValue adValue) {
        long valueMicros = adValue.getValueMicros();
        String currencyCode = adValue.getCurrencyCode();
        int precisionType = adValue.getPrecisionType();
        AdLogUtil.Log().d("AdmobNative", "onPaidEvent valueMicros " + valueMicros + ",currencyCode " + currencyCode + ",precisionType " + precisionType);
        admobShowPriceTracking((float) valueMicros, currencyCode, precisionType);
        onAdditionalShowed(valueMicros, currencyCode, precisionType);
    }

    public final void a(TAdErrorCode tAdErrorCode) {
        if (this.a != null) {
            if (!this.mNatives.isEmpty()) {
                adLoaded(this.mNatives);
                return;
            } else {
                adFailedToLoad(tAdErrorCode);
                return;
            }
        }
        AdLogUtil.Log().d("AdmobNative", " adLoader isLoading");
    }
}
