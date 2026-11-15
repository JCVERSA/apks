package com.transsion.mediationads.interstitial;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.Choreographer;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.mediationads.interstitial.a;
import com.transsion.widgetslib.view.OSLoadingView;
import defpackage.e74;
import defpackage.ev9;
import defpackage.g1a;
import defpackage.oy5;
import defpackage.v34;
import defpackage.y45;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import org.apache.commons.lang3.BooleanUtils;

public final class a {
    public static final a a = new a();
    public static final Handler b = new Handler(Looper.getMainLooper());
    public static volatile boolean c;
    public static Dialog d;
    public static Runnable e;
    public static Runnable f;
    public static WeakReference g;
    public static long h;

    public static final void f(Activity activity) {
        Activity activity2;
        a aVar = a;
        if (aVar.m(activity)) {
            String simpleName = activity != null ? activity.getClass().getSimpleName() : TtmlNode.COMBINE_ALL;
            WeakReference weakReference = g;
            Log.i("mediation_ad_ForegroundInterstitialCore", "cancelPendingShow activity=" + simpleName + ", pending=" + ((weakReference == null || (activity2 = (Activity) weakReference.get()) == null) ? null : activity2.getClass().getSimpleName()));
            InterstitialAdManagerCore.o.a().t();
            aVar.j();
        }
    }

    public static final void l() {
        f = null;
        Log.w("mediation_ad_ForegroundInterstitialCore", "interstitial loading safety timeout (6000ms), force recover");
        f(null);
        oy5.a("hot_start", "else_rule");
    }

    public static final void o(Activity activity) {
        Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow " + activity);
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            oy5.a("hot_start", "else_rule");
            return;
        }
        if (ev9.a(activity)) {
            oy5.a("hot_start", "else_rule");
            return;
        }
        if (c) {
            if (!a.n()) {
                oy5.a("hot_start", BooleanUtils.NO);
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - h;
            Dialog dialog = d;
            Log.w("mediation_ad_ForegroundInterstitialCore", "tryShow force recover stuck isShowing, elapsed=" + jElapsedRealtime + "ms, dialogShowing=" + (dialog != null ? Boolean.valueOf(dialog.isShowing()) : null));
            f(null);
        }
        final InterstitialAdManagerCore interstitialAdManagerCoreA = InterstitialAdManagerCore.o.a();
        if (!interstitialAdManagerCoreA.y()) {
            Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow blocked because no ad");
            oy5.a("hot_start", "mi_rule");
            return;
        }
        if (interstitialAdManagerCoreA.z()) {
            Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow blocked because interstitial is showing");
            oy5.a("hot_start", BooleanUtils.NO);
            return;
        }
        if (interstitialAdManagerCoreA.u()) {
            Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow intercept by ad return flag");
            oy5.a("hot_start", "else_rule");
            return;
        }
        if (v34.h()) {
            Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow blocked by guard");
            oy5.a("hot_start", "else_rule");
            return;
        }
        String name = activity.getClass().getName();
        Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow activity : " + name);
        if (ev9.a(activity)) {
            Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow exclude splash routing activity : " + name);
            oy5.a("hot_start", "else_rule");
            return;
        }
        y45.g(name);
        if (g1a.D(name, "VideoPlayerActivity", false, 2, null) || g1a.D(name, "VideoPlayerActivityInner", false, 2, null) || g1a.D(name, "LaunchTempActivity", false, 2, null) || g1a.D(name, "PrivacyFileActivity", false, 2, null) || g1a.D(name, "VipWebActivity", false, 2, null) || g1a.D(name, "CloudPaymentWebViewActivity", false, 2, null)) {
            Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow exclude activity : " + name);
            oy5.a("hot_start", "else_rule");
            return;
        }
        Intent intent = activity.getIntent();
        if (intent != null) {
            String action = intent.getAction();
            if (action != null) {
                if ((r8 = action.hashCode()) != -1516784189) {
                    Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow exclude action:" + action);
                    oy5.a("hot_start", "else_rule");
                    return;
                }
            }
            if (intent.getBooleanExtra("go_transfer_working", false) || intent.hasExtra("go_download")) {
                Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow exclude transfer notification return");
                oy5.a("hot_start", "else_rule");
                return;
            } else if (intent.getBooleanExtra("from_new_audio_notification", false)) {
                Log.i("mediation_ad_ForegroundInterstitialCore", "tryShow exclude new audio notification return");
                oy5.a("hot_start", "else_rule");
                return;
            }
        }
        f(null);
        c = true;
        h = SystemClock.elapsedRealtime();
        g = new WeakReference(activity);
        Dialog dialog2 = new Dialog(activity, R.style.Theme.Translucent.NoTitleBar);
        dialog2.setCancelable(false);
        dialog2.setCanceledOnTouchOutside(false);
        Window window = dialog2.getWindow();
        if (window != null) {
            window.clearFlags(1024);
            window.getDecorView().setSystemUiVisibility(0);
            window.addFlags(Integer.MIN_VALUE);
        }
        a aVar = a;
        aVar.e(activity, dialog2);
        dialog2.setContentView(com.transsion.mediationads.R.layout.dialog_interstitial_ad);
        OSLoadingView oSLoadingView = (OSLoadingView) dialog2.findViewById(com.transsion.mediationads.R.id.loading_view);
        if (oSLoadingView != null) {
            oSLoadingView.setVisibility(0);
        }
        try {
            dialog2.show();
            d = dialog2;
            aVar.k();
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    a.p(interstitialAdManagerCoreA);
                }
            };
            e = runnable;
            b.postDelayed(runnable, 1000L);
        } catch (Throwable unused) {
            a.j();
        }
    }

    public static final void p(final InterstitialAdManagerCore interstitialAdManagerCore) {
        WeakReference weakReference = g;
        final Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
        if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() {
                @Override
                public final void doFrame(long j) {
                    a.q(activity, interstitialAdManagerCore, j);
                }
            });
        } else {
            oy5.a("hot_start", "else_rule");
            a.j();
        }
    }

    public static final void q(final Activity activity, InterstitialAdManagerCore interstitialAdManagerCore, long j) {
        Activity activity2;
        WeakReference weakReference = g;
        if (weakReference != null && (activity2 = (Activity) weakReference.get()) != null) {
            activity = activity2;
        }
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            interstitialAdManagerCore.F(activity, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return a.r(activity, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            oy5.a("hot_start", "else_rule");
            a.j();
        }
    }

    public static final zfb r(Activity activity, boolean z) {
        Log.i("mediation_ad_ForegroundInterstitialCore", "showInterstitialAd result success=" + z + ", activity=" + activity.getClass().getSimpleName());
        a.j();
        oy5.a("hot_start", z ? BooleanUtils.NO : "else_rule");
        return zfb.a;
    }

    public final void e(Activity activity, Dialog dialog) {
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        try {
            int i = 0;
            boolean z = (activity.getResources().getConfiguration().uiMode & 48) == 32;
            int i2 = z ? -16777216 : -1;
            window.setStatusBarColor(i2);
            window.setNavigationBarColor(i2);
            window.setNavigationBarDividerColor(i2);
            if (Build.VERSION.SDK_INT < 30) {
                View decorView = window.getDecorView();
                y45.i(decorView, "getDecorView(...)");
                decorView.setSystemUiVisibility(z ? decorView.getSystemUiVisibility() & (-8209) : decorView.getSystemUiVisibility() | 8208);
            } else {
                WindowInsetsController insetsController = window.getInsetsController();
                if (!z) {
                    i = 24;
                }
                if (insetsController != null) {
                    insetsController.setSystemBarsAppearance(i, 24);
                }
            }
        } catch (Throwable th) {
            Log.w("mediation_ad_ForegroundInterstitialCore", "applySystemBarStyleByNightMode fail: " + th.getMessage());
        }
    }

    public final void g() {
        Runnable runnable = f;
        if (runnable != null) {
            b.removeCallbacks(runnable);
        }
        f = null;
    }

    public final void h() {
        try {
            Dialog dialog = d;
            if (dialog != null) {
                dialog.dismiss();
            }
        } catch (Throwable unused) {
        }
        d = null;
    }

    public final boolean i(Activity activity) {
        Dialog dialog = d;
        Context context = dialog != null ? dialog.getContext() : null;
        while (context instanceof ContextWrapper) {
            if (context == activity) {
                return true;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context == activity;
    }

    public final void j() {
        g();
        Runnable runnable = e;
        if (runnable != null) {
            b.removeCallbacks(runnable);
        }
        e = null;
        h();
        g = null;
        c = false;
        h = 0L;
    }

    public final void k() {
        g();
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                a.l();
            }
        };
        f = runnable;
        b.postDelayed(runnable, 6000L);
    }

    public final boolean m(Activity activity) {
        if (activity == null) {
            return (!c && e == null && d == null && f == null) ? false : true;
        }
        WeakReference weakReference = g;
        Activity activity2 = weakReference != null ? (Activity) weakReference.get() : null;
        if (activity2 != null) {
            return activity2 == activity;
        }
        return i(activity);
    }

    public final boolean n() {
        if (!c) {
            return false;
        }
        Dialog dialog = d;
        return dialog == null || !dialog.isShowing() || h <= 0 || SystemClock.elapsedRealtime() - h >= 6000;
    }
}
