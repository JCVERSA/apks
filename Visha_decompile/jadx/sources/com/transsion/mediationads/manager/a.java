package com.transsion.mediationads.manager;

import android.util.Log;
import com.transsion.mediationads.beans.AdDisplayResponse;
import com.transsion.mediationads.beans.SplashInterstitialStrategy;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {
    public static final C0229a a = new C0229a(null);
    public static volatile a b;
    public static volatile boolean c;
    public static SplashInterstitialStrategy d;
    public static SplashInterstitialStrategy e;

    public static final class C0229a {
        public C0229a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            a aVar = a.b;
            if (aVar == null) {
                synchronized (this) {
                    aVar = a.b;
                    if (aVar == null) {
                        aVar = new a(null);
                        a.b = aVar;
                    }
                }
            }
            return aVar;
        }

        public C0229a() {
        }
    }

    public a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean c() {
        SplashInterstitialStrategy splashInterstitialStrategyF = f();
        if (splashInterstitialStrategyF == null) {
            return false;
        }
        return !b.a.a().g(splashInterstitialStrategyF.getProtectDays());
    }

    public final boolean d() {
        SplashInterstitialStrategy splashInterstitialStrategyG = g();
        if (splashInterstitialStrategyG == null) {
            return false;
        }
        return !b.a.a().g(splashInterstitialStrategyG.getProtectDays());
    }

    public final void e(SplashInterstitialStrategy splashInterstitialStrategy) {
        if (splashInterstitialStrategy != null && splashInterstitialStrategy.getProtectDays() < 0) {
            splashInterstitialStrategy.setProtectDays(0);
        }
    }

    public final SplashInterstitialStrategy f() {
        return e;
    }

    public final SplashInterstitialStrategy g() {
        return d;
    }

    public final boolean h() {
        return c;
    }

    public final boolean i(SplashInterstitialStrategy splashInterstitialStrategy) {
        if (splashInterstitialStrategy == null) {
            return false;
        }
        return splashInterstitialStrategy.getPositionType() == 1 || splashInterstitialStrategy.getPositionType() == 2;
    }

    public final void j() {
        c = true;
        Log.i("mediation_ad_SplashInterstitialStrategyManagerCore", "Splash/interstitial strategy marked parse completed without cache data");
    }

    public final void k(AdDisplayResponse adDisplayResponse) {
        SplashInterstitialStrategy splashInterstitialStrategy;
        SplashInterstitialStrategy splashInterstitialStrategy2;
        Object next;
        Object next2;
        y45.j(adDisplayResponse, "adDisplayResponse");
        try {
            try {
                List<SplashInterstitialStrategy> splashList = adDisplayResponse.getSplashList();
                if (splashList != null) {
                    Iterator<T> it = splashList.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                    } while (((SplashInterstitialStrategy) next2).getPositionType() != 1);
                    splashInterstitialStrategy = (SplashInterstitialStrategy) next2;
                } else {
                    splashInterstitialStrategy = null;
                }
                d = splashInterstitialStrategy;
                List<SplashInterstitialStrategy> splashList2 = adDisplayResponse.getSplashList();
                if (splashList2 != null) {
                    Iterator<T> it2 = splashList2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (((SplashInterstitialStrategy) next).getPositionType() != 2);
                    splashInterstitialStrategy2 = (SplashInterstitialStrategy) next;
                } else {
                    splashInterstitialStrategy2 = null;
                }
                e = splashInterstitialStrategy2;
                e(d);
                e(e);
                if (!i(d)) {
                    Log.w("mediation_ad_SplashInterstitialStrategyManagerCore", "Ineffective splash strategy: " + d);
                    d = null;
                }
                if (!i(e)) {
                    Log.w("mediation_ad_SplashInterstitialStrategyManagerCore", "Ineffective interstitial strategy: " + e);
                    e = null;
                }
                Log.i("mediation_ad_SplashInterstitialStrategyManagerCore", "Splash/interstitial strategies - splash: " + d + ", interstitial: " + e);
            } catch (Exception e2) {
                Log.e("mediation_ad_SplashInterstitialStrategyManagerCore", "Failed to parse splash/interstitial strategy: " + e2.getMessage());
            }
        } finally {
            c = true;
        }
    }

    public a() {
    }
}
