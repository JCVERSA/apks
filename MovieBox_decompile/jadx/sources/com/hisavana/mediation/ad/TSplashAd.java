package com.hisavana.mediation.ad;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.adxlibrary.excuter.AdxWrapperSplash;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.OnSkipListener;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import ee.c;
import ee.h;
import ee.i;
import ee.r;
import ee.s;
import fe.b;

public class TSplashAd extends b {

    @ComConstants.SplashModeIntDef
    public int A;
    public int B;
    public Float C;
    public String D;
    public boolean E;
    public boolean F;
    public AdxWrapperSplash G;
    public OnSkipListener H;

    public TSplashAd(Context context, String str) {
        super(context);
        this.A = 1;
        this.B = 1;
        this.E = false;
        this.F = false;
        this.f60129a = str;
    }

    public static boolean hasCache(String str) {
        AdCache cache = AdCacheManager.getCache(4);
        int adNum = cache != null ? cache.getAdNum(str) : 0;
        AdLogUtil.Log().d("TSplashAd", "placementId " + str + ",adNum = " + adNum);
        MediaLogUtil.d("TSplashAd", "placementId " + str + ",adNum = " + adNum);
        return adNum > 0;
    }

    @Override
    public boolean a(int i10) {
        return i10 == 4;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public void clearCurrentAd() {
        super.clearCurrentAd();
    }

    @Override
    public void destroy() {
        if (!this.E) {
            super.destroy();
            return;
        }
        AdxWrapperSplash adxWrapperSplash = this.G;
        if (adxWrapperSplash != null) {
            adxWrapperSplash.destroy();
        }
    }

    @Override
    public double getTopPrice(int i10) {
        if (!this.E) {
            return super.getTopPrice(i10);
        }
        AdxWrapperSplash adxWrapperSplash = this.G;
        if (adxWrapperSplash == null) {
            return 0.0d;
        }
        return adxWrapperSplash.getEcpmPrice();
    }

    @Override
    public void loadAd() {
        if (!this.E) {
            super.loadAd();
            return;
        }
        e.g(this.f60130b.getApplicationContext());
        AdxWrapperSplash debug = new AdxWrapperSplash(this.f60130b, this.D, this.f60129a).setSplashMode(this.A).setContainVulgarContent(this.f60145q).setAdLoadScenes(this.f60146r, this.f60147s, this.f60148t).setAdditionalListener(this.f60136h.a()).setSkipListener(this.H).setDebug(this.F);
        this.G = debug;
        debug.loadAd();
    }

    @Override
    public void pause() {
        super.pause();
    }

    @Override
    public void resume() {
        super.resume();
    }

    public void setAdUnitId(String str) {
        this.f60129a = str;
    }

    public void setLogoLayoutHeightRatio(Float f10) {
        if (f10 == null) {
            return;
        }
        if (f10.floatValue() < 0.1f || f10.floatValue() > 0.2f) {
            this.C = Float.valueOf(0.2f);
        } else {
            this.C = f10;
        }
    }

    public void setOnShowListener(TAdListener tAdListener) {
        s sVar = this.f60136h;
        if (sVar != null) {
            sVar.h(tAdListener);
        }
    }

    public void setOnSkipListener(OnSkipListener onSkipListener) {
        s sVar = this.f60136h;
        if (sVar != null) {
            sVar.g(onSkipListener);
        }
        this.H = onSkipListener;
        AdxWrapperSplash adxWrapperSplash = this.G;
        if (adxWrapperSplash != null) {
            adxWrapperSplash.setSkipListener(onSkipListener);
        }
    }

    public void setOnlySourceAdx(String str, boolean z10) {
        this.E = true;
        this.D = str;
        this.F = z10;
    }

    public void setOrientation(int i10) {
        if (i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException("place use SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_PORTRAIT or SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_LANDSCAPE");
        }
        this.B = i10;
        AdLogUtil.Log().d("TSplashAd", "current orientation is " + i10);
    }

    public void setSplashMode(@ComConstants.SplashModeIntDef int i10) {
        this.A = i10;
    }

    public void showAd(@NonNull TSplashView tSplashView) {
        showAd(tSplashView, null, "");
    }

    @Override
    public c a(CloudControlConfig.CodeSeat codeSeat) {
        i iVarD = d();
        iVarD.A(this.B);
        iVarD.C(this.A);
        return new r(codeSeat, iVarD, this.f60136h);
    }

    public void showAd(@NonNull TSplashView tSplashView, String str) {
        showAd(tSplashView, null, str);
    }

    public void showAd(@NonNull TSplashView tSplashView, View view) {
        showAd(tSplashView, view, "");
    }

    public void showAd(@NonNull TSplashView tSplashView, View view, String str) {
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TSplashAd", "appId is empty");
            return;
        }
        if (!e.h()) {
            AdLogUtil.Log().e("TSplashAd", "you should init first");
            return;
        }
        if (this.E) {
            AdxWrapperSplash adxWrapperSplash = this.G;
            if (adxWrapperSplash != null) {
                adxWrapperSplash.setLogoLayoutHeightRatio(this.C);
                this.G.showAd(tSplashView, view);
                return;
            }
            return;
        }
        n();
        AdLogUtil.Log().d("TSplashAd", "showAd sceneToken " + str);
        if (this.f60141m) {
            TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED;
            trackingTriggerShowError(tAdErrorCode);
            b(tAdErrorCode);
            return;
        }
        if (this.f60135g == null) {
            this.f60135g = h.a(this.f60129a);
        }
        TAdErrorCode tAdErrorCodeB = b(this.f60135g);
        if (tAdErrorCodeB != null) {
            trackingTriggerShowError(tAdErrorCodeB);
            b(tAdErrorCodeB);
            AdLogUtil.Log().d("TSplashAd", "showAd errorCode " + tAdErrorCodeB);
            return;
        }
        c cVarG = g();
        if (cVarG != null) {
            Object objE = cVarG.e(this.f60145q);
            if (objE instanceof BaseSplash) {
                BaseSplash baseSplash = (BaseSplash) objE;
                if (baseSplash.canShow()) {
                    WrapTAdAllianceListener tAdAllianceListener = baseSplash.getTAdAllianceListener();
                    if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                        AdLogUtil.Log().i("TSplashAd", "TSplash setAdListener");
                        tAdAllianceListener.setAdListener(this.f60136h);
                    }
                    baseSplash.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
                    baseSplash.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f60145q ? 1 : 0);
                    baseSplash.setLogoLayoutHeightRatio(this.C);
                    baseSplash.addLogoLayout(view);
                    setIsShowing(true);
                    baseSplash.show(tSplashView, str, a(str));
                    return;
                }
            }
            AdLogUtil.Log().w("TSplashAd", "no ad or ad is expired ");
            t();
            return;
        }
        AdLogUtil.Log().w("TSplashAd", "show error,splash handler is null");
        t();
    }
}
