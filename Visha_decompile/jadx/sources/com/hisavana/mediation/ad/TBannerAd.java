package com.hisavana.mediation.ad;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.cloud.sdk.commonutil.util.Preconditions;
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
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;
import defpackage.pca;
import defpackage.ul4;
import defpackage.vid;
import defpackage.z2d;
import java.util.ArrayList;

public class TBannerAd extends pca {
    public WrapTadView D;
    public boolean F;
    public boolean G;
    public String H;
    public int A = -1;
    public int B = 0;
    public int C = 0;
    public int E = 0;

    public TBannerAd(Context context, WrapTadView wrapTadView) {
        this.b = context;
        if (context != null && ul4.a() == null) {
            ul4.k(context);
        }
        b();
        this.D = wrapTadView;
    }

    @Override
    public boolean a(int i) {
        return i == 2;
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public void clearCurrentAd() {
        if (this.p) {
            return;
        }
        super.clearCurrentAd();
    }

    public void d(int i) {
        this.C = i;
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
                } catch (Exception e) {
                    AdLogUtil.Log().e("TBannerAd", "Failed to remove banner view: " + e.getMessage());
                }
            }
        }
        this.D = null;
        u();
    }

    public void e(int i) {
        this.B = i;
    }

    @Override
    public String enterScene(String str, int i) {
        Preconditions.a();
        String strEnterScene = super.enterScene(str, i);
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
        if (this.p) {
            setIsShowing(false);
            clearCurrentAd();
        }
        this.D.removeAllViews();
        a aVarG = g();
        if (aVarG != null) {
            try {
                aVarG.p(this.h);
                BaseBanner baseBanner = (BaseBanner) aVarG.d(this.q);
                if (baseBanner == null || !baseBanner.canShow()) {
                    t();
                    AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBannerAd --> no ad or ad is expired");
                } else {
                    WrapTAdAllianceListener tAdAllianceListener = baseBanner.getTAdAllianceListener();
                    if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                        AdLogUtil.Log().i("TBannerAd", "TBannerAd setAdListener");
                        tAdAllianceListener.setAdListener(this.h);
                    }
                    baseBanner.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
                    baseBanner.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.q ? 1 : 0);
                    setIsShowing(true);
                    WrapTadView wrapTadView = this.D;
                    String str = this.H;
                    baseBanner.show(wrapTadView, str, a(str));
                }
                u();
            } catch (Throwable th) {
                AdLogUtil.Log().e(ComConstants.AD_FLOW, "TBannerAd --> exception:" + Log.getStackTraceString(th));
                t();
            }
        }
    }

    public void setAdUnitId(String str) {
        this.a = str;
    }

    public void setBannerType(int i) {
        this.E = i;
    }

    public void setCloseDirectlyWithoutJumping(boolean z) {
        this.G = z;
    }

    public void setHideAdCloseView(boolean z) {
        this.F = z;
    }

    public final void u() {
        ArrayList<ICacheAd> caches;
        AdLogUtil.Log().d("TBannerAd", "destroyFoldAd ");
        AdCache cache = AdCacheManager.getCache(e());
        if (cache != null && (caches = cache.getCaches(this.a, Integer.MAX_VALUE, false, this.q)) != null && !caches.isEmpty()) {
            for (ICacheAd iCacheAd : caches) {
                if ((iCacheAd instanceof BaseBanner) && ((BaseBanner) iCacheAd).destroyFoldAd()) {
                    cache.removeCache(this.a, iCacheAd);
                    AdLogUtil.Log().d("TBannerAd", "destroyFoldAd removeCache " + iCacheAd);
                }
            }
        }
        RequestingAdManager.getInstance().destroyFoldAd(this.a);
    }

    @Override
    public a a(CloudControlConfig.CodeSeat codeSeat) {
        vid vidVarD = d();
        vidVarD.s(this.A);
        vidVarD.u(this.E);
        vidVarD.p(this.B);
        vidVarD.m(this.C);
        vidVarD.q(this.F);
        vidVarD.g(this.G);
        return new z2d(codeSeat, vidVarD, this.h);
    }

    public void c(int i) {
        this.A = i;
    }
}
