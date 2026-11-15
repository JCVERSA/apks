package com.transsion.mediationads.interstitial;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.mediation.ad.TInterstitialAd;
import com.transsion.mediationads.interstitial.InterstitialAdManagerCore;
import defpackage.e74;
import defpackage.rz5;
import defpackage.wn8;
import defpackage.y45;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class InterstitialAdManagerCore {
    public static final a o = new a(null);
    public static volatile InterstitialAdManagerCore p;
    public TInterstitialAd a;
    public long b;
    public long c;
    public boolean d;
    public boolean e;
    public boolean f;
    public volatile boolean g;
    public volatile boolean h;
    public volatile boolean i;
    public WeakReference j;
    public e74 k;
    public Runnable l;
    public final Handler m;
    public String n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final InterstitialAdManagerCore a() {
            InterstitialAdManagerCore interstitialAdManagerCore = InterstitialAdManagerCore.p;
            if (interstitialAdManagerCore == null) {
                synchronized (this) {
                    interstitialAdManagerCore = InterstitialAdManagerCore.p;
                    if (interstitialAdManagerCore == null) {
                        interstitialAdManagerCore = new InterstitialAdManagerCore(null);
                        InterstitialAdManagerCore.p = interstitialAdManagerCore;
                    }
                }
            }
            return interstitialAdManagerCore;
        }

        public a() {
        }
    }

    public InterstitialAdManagerCore(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final void C(final InterstitialAdManagerCore interstitialAdManagerCore, Context context) {
        try {
            if (interstitialAdManagerCore.a != null) {
                interstitialAdManagerCore.w();
            }
            TInterstitialAd tInterstitialAd = new TInterstitialAd(context.getApplicationContext(), "26031127F5mCN3");
            interstitialAdManagerCore.a = tInterstitialAd;
            tInterstitialAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdListener(new TAdListener() {
                @Override
                public void onClicked(int p0) {
                    Log.i("mediation_ad_InterstitialAdManagerCore", "Interstitial ad clicked");
                    this.this$0.i = true;
                    rz5.a.a(2);
                }

                @Override
                public void onClosed(int p0) {
                    Log.i("mediation_ad_InterstitialAdManagerCore", "Interstitial ad closed");
                    this.this$0.g = false;
                    this.this$0.j = null;
                    this.this$0.i = true;
                    if (this.this$0.e) {
                        return;
                    }
                    this.this$0.e = true;
                    rz5.a.b(2, 1, this.this$0.c > 0 ? wn8.e((System.currentTimeMillis() - this.this$0.c) / 1000, 0L) : 0L);
                }

                @Override
                public void onError(TAdErrorCode errorCode) {
                    Log.i("mediation_ad_InterstitialAdManagerCore", "Interstitial ad error: " + errorCode);
                    if (this.this$0.d) {
                        return;
                    }
                    this.this$0.d = true;
                    rz5.a.d(2, 0, System.currentTimeMillis() - this.this$0.b, errorCode != null ? errorCode.toString() : null);
                }

                @Override
                public void onLoad() {
                    Log.i("mediation_ad_InterstitialAdManagerCore", "Interstitial ad onLoad " + this.this$0.a);
                    if (this.this$0.d) {
                        return;
                    }
                    this.this$0.d = true;
                    rz5.a.d(2, 1, System.currentTimeMillis() - this.this$0.b, null);
                }

                @Override
                public void onShow(int p0) {
                    Log.i("mediation_ad_InterstitialAdManagerCore", "Interstitial ad shown");
                    this.this$0.c = System.currentTimeMillis();
                    this.this$0.g = true;
                    this.this$0.h = true;
                    this.this$0.x(true);
                    if (this.this$0.f) {
                        return;
                    }
                    this.this$0.f = true;
                    rz5.a.e(2, null);
                }

                @Override
                public void onShowError(TAdErrorCode errorCode) {
                    String string;
                    Log.i("mediation_ad_InterstitialAdManagerCore", "Interstitial ad show error: " + errorCode);
                    this.this$0.g = false;
                    this.this$0.j = null;
                    this.this$0.x(false);
                    rz5.a aVar = rz5.a;
                    if (errorCode == null || (string = Integer.valueOf(errorCode.getErrorCode()).toString()) == null) {
                        string = "-10000";
                    }
                    aVar.e(2, string);
                }
            }).build());
            interstitialAdManagerCore.b = System.currentTimeMillis();
            interstitialAdManagerCore.c = 0L;
            interstitialAdManagerCore.d = false;
            interstitialAdManagerCore.e = false;
            interstitialAdManagerCore.f = false;
            rz5.a.c(2);
            TInterstitialAd tInterstitialAd2 = interstitialAdManagerCore.a;
            if (tInterstitialAd2 != null) {
                tInterstitialAd2.loadAd();
            }
        } catch (Exception e) {
            Log.e("mediation_ad_InterstitialAdManagerCore", "Preload ad error: " + e.getMessage());
        }
    }

    public static final void E(InterstitialAdManagerCore interstitialAdManagerCore) {
        if (interstitialAdManagerCore.k == null) {
            Log.w("mediation_ad_InterstitialAdManagerCore", "show interstitial timeout but listener already cleared");
        } else {
            Log.w("mediation_ad_InterstitialAdManagerCore", "show interstitial timeout, dispatch fail result");
            interstitialAdManagerCore.x(false);
        }
    }

    public final void A(Activity activity) {
        WeakReference weakReference;
        Activity activity2;
        if (activity == null || (weakReference = this.j) == null || (activity2 = (Activity) weakReference.get()) == null || activity2 != activity) {
            return;
        }
        Log.w("mediation_ad_InterstitialAdManagerCore", "Host activity destroyed during interstitial, release ad");
        w();
        this.i = true;
    }

    public final void B(final Context context, boolean z) {
        TInterstitialAd tInterstitialAd;
        y45.j(context, "context");
        if (z || (tInterstitialAd = this.a) == null || !tInterstitialAd.hasAd()) {
            this.m.post(new Runnable() {
                @Override
                public final void run() {
                    InterstitialAdManagerCore.C(this.b, context);
                }
            });
        } else {
            Log.i("mediation_ad_InterstitialAdManagerCore", "preloadInterstitialAd hasAd");
        }
    }

    public final void D() {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                InterstitialAdManagerCore.E(this.b);
            }
        };
        this.l = runnable;
        this.m.postDelayed(runnable, 4000L);
    }

    public final void F(Activity activity, e74 e74Var) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            if (e74Var != null) {
                e74Var.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        t();
        this.k = e74Var;
        D();
        TInterstitialAd tInterstitialAd = this.a;
        this.n = tInterstitialAd != null ? tInterstitialAd.enterScene("interstitial_scene_video", 1) : null;
        if (!y()) {
            x(false);
            return;
        }
        this.j = new WeakReference(activity);
        TInterstitialAd tInterstitialAd2 = this.a;
        if (tInterstitialAd2 != null) {
            tInterstitialAd2.show(activity, this.n);
        }
    }

    public final void t() {
        Runnable runnable = this.l;
        if (runnable != null) {
            this.m.removeCallbacks(runnable);
        }
        this.l = null;
        this.k = null;
    }

    public final boolean u() {
        if (!this.i) {
            return false;
        }
        this.i = false;
        return true;
    }

    public final boolean v() {
        if (!this.h) {
            return false;
        }
        this.h = false;
        return true;
    }

    public final void w() {
        Log.d("mediation_ad_InterstitialAdManagerCore", "destroy " + this.a);
        this.m.removeCallbacksAndMessages(null);
        TInterstitialAd tInterstitialAd = this.a;
        if (tInterstitialAd != null) {
            tInterstitialAd.destroy();
        }
        this.a = null;
        this.j = null;
        t();
        this.g = false;
        this.h = false;
        this.i = false;
    }

    public final void x(boolean z) {
        Runnable runnable = this.l;
        if (runnable != null) {
            this.m.removeCallbacks(runnable);
        }
        this.l = null;
        e74 e74Var = this.k;
        if (e74Var != null) {
            e74Var.invoke(Boolean.valueOf(z));
        }
        this.k = null;
    }

    public final boolean y() {
        TInterstitialAd tInterstitialAd = this.a;
        return tInterstitialAd != null && tInterstitialAd.hasAd();
    }

    public final boolean z() {
        return this.g;
    }

    public InterstitialAdManagerCore() {
        this.m = new Handler(Looper.getMainLooper());
    }
}
