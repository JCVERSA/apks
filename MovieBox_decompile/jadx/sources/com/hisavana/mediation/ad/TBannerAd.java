package com.hisavana.mediation.ad;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.WrapTadView;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.manager.RequestingAdManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import ee.a;
import ee.c;
import ee.i;
import fe.b;
import java.util.ArrayList;

public class TBannerAd extends b {
    public WrapTadView D;
    public boolean F;
    public boolean G;
    public String H;
    public int A = -1;
    public int B = 0;
    public int C = 0;
    public int E = 0;

    public TBannerAd(Context context, WrapTadView wrapTadView) {
        this.f60130b = context;
        if (context != null && e.a() == null) {
            e.i(context);
        }
        b();
        this.D = wrapTadView;
    }

    @Override
    public boolean a(int i10) {
        return i10 == 2;
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public void clearCurrentAd() {
        if (this.f60144p) {
            return;
        }
        super.clearCurrentAd();
    }

    public void d(int i10) {
        this.C = i10;
    }

    @Override
    public void destroy() {
        super.destroy();
        WrapTadView wrapTadView = this.D;
        if (wrapTadView != null) {
            wrapTadView.removeAllViews();
            ViewParent parent = this.D.getParent();
            if (parent instanceof ViewGroup) {
                try {
                    ((ViewGroup) parent).removeView(this.D);
                } catch (Exception e10) {
                    AdLogUtil.Log().e("TBannerAd", "Failed to remove banner view: " + e10.getMessage());
                }
            }
        }
        this.D = null;
        u();
    }

    public void e(int i10) {
        this.B = i10;
    }

    @Override
    public String enterScene(String str, int i10) {
        Preconditions.a();
        String strEnterScene = super.enterScene(str, i10);
        this.H = strEnterScene;
        return strEnterScene;
    }

    @Override
    public void q() {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "show ad if avaliable");
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("must call show in main thread");
        }
        if (this.D == null) {
            AdLogUtil.Log().d(ComConstants.AD_FLOW, "TBannerAd --> mBannerView is null");
            return;
        }
        n();
        if (this.f60144p) {
            setIsShowing(false);
            clearCurrentAd();
        }
        this.D.removeAllViews();
        c cVarG = g();
        if (cVarG != null) {
            try {
                cVarG.o(this.f60136h);
                BaseBanner baseBanner = (BaseBanner) cVarG.e(this.f60145q);
                if (baseBanner == null || !baseBanner.canShow()) {
                    t();
                    AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBannerAd --> no ad or ad is expired");
                } else {
                    WrapTAdAllianceListener tAdAllianceListener = baseBanner.getTAdAllianceListener();
                    if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                        AdLogUtil.Log().i("TBannerAd", "TBannerAd setAdListener");
                        tAdAllianceListener.setAdListener(this.f60136h);
                    }
                    baseBanner.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
                    baseBanner.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f60145q ? 1 : 0);
                    setIsShowing(true);
                    WrapTadView wrapTadView = this.D;
                    String str = this.H;
                    baseBanner.show(wrapTadView, str, a(str));
                }
                u();
            } catch (Throwable th2) {
                AdLogUtil.Log().e(ComConstants.AD_FLOW, "TBannerAd --> exception:" + Log.getStackTraceString(th2));
                t();
            }
        }
    }

    public void setAdUnitId(String str) {
        this.f60129a = str;
    }

    public void setBannerType(int i10) {
        this.E = i10;
    }

    public void setCloseDirectlyWithoutJumping(boolean z10) {
        this.G = z10;
    }

    public void setHideAdCloseView(boolean z10) {
        this.F = z10;
    }

    public final void u() {
        ArrayList<ICacheAd> caches;
        AdLogUtil.Log().d("TBannerAd", "destroyFoldAd ");
        AdCache cache = AdCacheManager.getCache(e());
        if (cache != null && (caches = cache.getCaches(this.f60129a, Integer.MAX_VALUE, false, this.f60145q)) != null && !caches.isEmpty()) {
            for (ICacheAd iCacheAd : caches) {
                if ((iCacheAd instanceof BaseBanner) && ((BaseBanner) iCacheAd).destroyFoldAd()) {
                    cache.removeCache(this.f60129a, iCacheAd);
                    AdLogUtil.Log().d("TBannerAd", "destroyFoldAd removeCache " + iCacheAd);
                }
            }
        }
        RequestingAdManager.getInstance().destroyFoldAd(this.f60129a);
    }

    @Override
    public c a(CloudControlConfig.CodeSeat codeSeat) {
        i iVarD = d();
        iVarD.s(this.A);
        iVarD.u(this.E);
        iVarD.p(this.B);
        iVarD.m(this.C);
        iVarD.q(this.F);
        iVarD.g(this.G);
        return new a(codeSeat, iVarD, this.f60136h);
    }

    public void c(int i10) {
        this.A = i10;
    }
}
