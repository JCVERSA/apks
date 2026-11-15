package com.transsion.ad.strategy;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class HotSplashManager extends oh.a {

    private static long f41169e;

    private static boolean f41170f;

    private static BiddingInterstitialManager f41171g;

    public static final HotSplashManager f41168d = new HotSplashManager();

    private static final Handler f41172h = new Handler(Looper.getMainLooper());

    private HotSplashManager() {
    }

    private final String B() {
        JsonElement jsonElement;
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB == null) {
            return "topAct is null";
        }
        if (activityB.isDestroyed()) {
            return "topAct?.isDestroyed == true";
        }
        ci.o oVar = ci.o.f16946a;
        if (!oVar.a(activityB) || oVar.b(activityB)) {
            return "处理App在锁屏状态下被拉活";
        }
        rh.c cVar = rh.c.f71230a;
        if (cVar.a()) {
            cVar.b(false);
            return "全搜的时候热启动不展示热启动广告";
        }
        if (f41169e <= 0) {
            return "inBackgroundTime <= 0";
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - f41169e;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b(rh.d.f71232a.a());
        int asInt = ((jsonObjectB == null || (jsonElement = jsonObjectB.get("hotSplashInterval")) == null) ? 1 : jsonElement.getAsInt()) * 60000;
        if (jElapsedRealtime >= asInt) {
            return "";
        }
        return "不满足最小间隔时间 -- background_time = " + jElapsedRealtime + " --- TIME_IN_THE_BACKGROUND = " + asInt;
    }

    private final void C() {
        String strB = B();
        if (TextUtils.isEmpty(strB)) {
            if (f41171g != null) {
                return;
            }
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new HotSplashManager$loadHotSplashAd$1(null), 3, null);
            return;
        }
        xh.a.f75336a.l("ad_int", getClassTag() + " --> loadHotSplashAd() --> msg = " + strB, 6, false);
    }

    public static final void E() {
        f41168d.C();
    }

    private final void G() {
        BiddingInterstitialManager biddingInterstitialManager = f41171g;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.U();
        }
        f41171g = null;
    }

    public final String getClassTag() {
        String simpleName = HotSplashManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void D() {
        xh.a.m(xh.a.f75336a, "ad_int", getClassTag() + " --> onStop() --> App进入前台", 0, false, 4, null);
        f41170f = false;
        Handler handler = f41172h;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                HotSplashManager.E();
            }
        }, 300L);
    }

    public final void F() {
        xh.a.m(xh.a.f75336a, "ad_int", getClassTag() + " --> onStop() --> App进入后台", 0, false, 4, null);
        f41169e = SystemClock.elapsedRealtime();
        f41170f = true;
        f41172h.removeCallbacksAndMessages(null);
        BiddingInterstitialManager.Companion.b(BiddingInterstitialManager.f40942t, rh.d.f71232a.a(), null, 2, null);
    }

    @Override
    public void i(TAdErrorCode tAdErrorCode) {
        super.i(tAdErrorCode);
        G();
    }

    @Override
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.j(biddingIntermediateMaterialBean);
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB != null) {
            AppCompatActivity appCompatActivity = activityB instanceof AppCompatActivity ? (AppCompatActivity) activityB : null;
            if (appCompatActivity != null) {
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(appCompatActivity), null, null, new HotSplashManager$onBiddingLoad$1$1$1(activityB, biddingIntermediateMaterialBean, null), 3, null);
            }
        }
    }

    @Override
    public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.m(biddingIntermediateMaterialBean);
        G();
    }

    @Override
    public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.p(biddingIntermediateMaterialBean);
        G();
    }
}
