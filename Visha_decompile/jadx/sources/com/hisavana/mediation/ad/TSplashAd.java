package com.hisavana.mediation.ad;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
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
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import defpackage.pca;
import defpackage.rud;
import defpackage.ul4;
import defpackage.vid;
import defpackage.xtd;
import defpackage.zgd;

public class TSplashAd extends pca {

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
        this.a = str;
    }

    public static boolean hasCache(String str) {
        AdCache cache = AdCacheManager.getCache(4);
        int adNum = cache != null ? cache.getAdNum(str) : 0;
        AdLogUtil.Log().d("TSplashAd", "placementId " + str + ",adNum = " + adNum);
        MediaLogUtil.d("TSplashAd", "placementId " + str + ",adNum = " + adNum);
        return adNum > 0;
    }

    @Override
    public boolean a(int i) {
        return i == 4;
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
    public double getTopPrice(int i) {
        if (!this.E) {
            return super.getTopPrice(i);
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
        ul4.g(this.b.getApplicationContext());
        AdxWrapperSplash debug = new AdxWrapperSplash(this.b, this.D, this.a).setSplashMode(this.A).setContainVulgarContent(this.q).setAdLoadScenes(this.r, this.s, this.t).setAdditionalListener(this.h.a()).setSkipListener(this.H).setDebug(this.F);
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
        this.a = str;
    }

    public void setLogoLayoutHeightRatio(Float f) {
        if (f == null) {
            return;
        }
        if (f.floatValue() < 0.1f || f.floatValue() > 0.2f) {
            this.C = Float.valueOf(0.2f);
        } else {
            this.C = f;
        }
    }

    public void setOnShowListener(TAdListener tAdListener) {
        rud rudVar = this.h;
        if (rudVar != null) {
            rudVar.g(tAdListener);
        }
    }

    public void setOnSkipListener(OnSkipListener onSkipListener) {
        rud rudVar = this.h;
        if (rudVar != null) {
            rudVar.a(onSkipListener);
        }
        this.H = onSkipListener;
        AdxWrapperSplash adxWrapperSplash = this.G;
        if (adxWrapperSplash != null) {
            adxWrapperSplash.setSkipListener(onSkipListener);
        }
    }

    public void setOnlySourceAdx(String str, boolean z) {
        this.E = true;
        this.D = str;
        this.F = z;
    }

    public void setOrientation(int i) {
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException("place use SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_PORTRAIT or SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_LANDSCAPE");
        }
        this.B = i;
        AdLogUtil.Log().d("TSplashAd", "current orientation is " + i);
    }

    public void setSplashMode(@ComConstants.SplashModeIntDef int i) {
        this.A = i;
    }

    public void showAd(@NonNull TSplashView tSplashView) {
        showAd(tSplashView, null, "");
    }

    @Override
    public a a(CloudControlConfig.CodeSeat codeSeat) {
        vid vidVarD = d();
        vidVarD.A(this.B);
        vidVarD.C(this.A);
        return new xtd(codeSeat, vidVarD, this.h);
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
        if (!ul4.i()) {
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
        if (this.m) {
            TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED;
            trackingTriggerShowError(tAdErrorCode);
            b(tAdErrorCode);
            return;
        }
        if (this.g == null) {
            this.g = zgd.a(this.a);
        }
        TAdErrorCode tAdErrorCodeB = b(this.g);
        if (tAdErrorCodeB != null) {
            trackingTriggerShowError(tAdErrorCodeB);
            b(tAdErrorCodeB);
            AdLogUtil.Log().d("TSplashAd", "showAd errorCode " + tAdErrorCodeB);
            return;
        }
        a aVarG = g();
        if (aVarG != null) {
            Object objD = aVarG.d(this.q);
            if (objD instanceof BaseSplash) {
                BaseSplash baseSplash = (BaseSplash) objD;
                if (baseSplash.canShow()) {
                    WrapTAdAllianceListener tAdAllianceListener = baseSplash.getTAdAllianceListener();
                    if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                        AdLogUtil.Log().i("TSplashAd", "TSplash setAdListener");
                        tAdAllianceListener.setAdListener(this.h);
                    }
                    baseSplash.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
                    baseSplash.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.q ? 1 : 0);
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
