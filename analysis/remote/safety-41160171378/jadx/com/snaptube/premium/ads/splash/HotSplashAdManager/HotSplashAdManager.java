package com.snaptube.premium.ads.splash;

import com.snaptube.ad.frequency.FrequencyControlManager;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.premium.ads.SplashAdManager;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.wandoujia.base.config.GlobalConfig;
import java.util.regex.Pattern;
import kotlin.b;
import o.ce;
import o.dp1;
import o.fc1;
import o.jb;
import o.me8;
import o.od;
import o.or3;
import o.sn;
import o.t14;
import o.t73;
import o.tt3;
import o.wd0;
import o.x61;

public final class HotSplashAdManager {
    public static final HotSplashAdManager a = new HotSplashAdManager();
    public static final t14 b = b.b(HotSplashAdManager$PATTERN_HOT_SPLASH_ENABLED$2.INSTANCE);
    public static final String c = AdsPos.HOT_SPLASH.pos();
    public static tt3 d;

    public static void a() {
        g();
    }

    public static final String b() {
        return c;
    }

    public static final boolean e() {
        return Config.w3(a.c());
    }

    public static final void g() {
        String strPos = AdsPos.HOT_SPLASH.pos();
        if (e() && od.v(strPos)) {
            FrequencyControlManager frequencyControlManager = FrequencyControlManager.a;
            or3.c(strPos);
            if (frequencyControlManager.h(strPos, SplashAdManager.d0().a0())) {
                ((sn) fc1.a(PhoenixApplication.z())).H0().c(jb.e.a(strPos).f("ad_request_scene", "enter_background"));
            }
        }
    }

    public final boolean c() {
        String strG = me8.g(GlobalConfig.getAppContext());
        if (strG == null || strG.length() == 0) {
            return true;
        }
        return !d().matcher(strG).matches();
    }

    public final Pattern d() {
        return (Pattern) b.getValue();
    }

    public final void f() {
        t73 t73Var = new t73();
        t73Var.run();
        i(t73Var);
    }

    public final void h() {
        tt3 tt3Var = d;
        if (tt3Var != null) {
            tt3.a.a(tt3Var, null, 1, null);
        }
    }

    public final void i(Runnable runnable) {
        if (ce.a(PhoenixApplication.z()).i()) {
            tt3 tt3Var = d;
            if (tt3Var != null) {
                tt3.a.a(tt3Var, null, 1, null);
            }
            d = wd0.d(x61.a(dp1.c().s0()), null, null, new HotSplashAdManager$tryBackgroundDelayedPreload$1(runnable, null), 3, null);
        }
    }
}
