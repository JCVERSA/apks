package uw;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.a0;
import com.gyf.immersionbar.ImmersionBar;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.wrapperad.activate.ui.SwipeUpCloseView;
import com.transsion.wrapperad.install.ui.AppInstalledTipView;
import ij.g;
import ij.o;
import im.b;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f73266a = new a();

    public static final class C0903a implements Application.ActivityLifecycleCallbacks {
        C0903a() {
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
            Intrinsics.h(activity, "activity");
        }

        @Override
        public void onActivityPaused(Activity activity) {
            Intrinsics.h(activity, "activity");
            a.f73266a.f(activity);
        }

        @Override
        public void onActivityResumed(Activity activity) {
            Intrinsics.h(activity, "activity");
            if (o.f62115a.g() || g.f62108a.b()) {
                return;
            }
            b bVar = (b) TheRouter.d(b.class, new Object[0]);
            if (!(bVar != null ? bVar.m() : false) && (activity instanceof BaseMusicFloatActivity)) {
                a.f73266a.d(activity);
            }
            if (activity instanceof BaseMusicFloatActivity) {
                a.f73266a.e(activity);
            }
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(outState, "outState");
        }

        @Override
        public void onActivityStarted(Activity activity) {
            Intrinsics.h(activity, "activity");
        }

        @Override
        public void onActivityStopped(Activity activity) {
            Intrinsics.h(activity, "activity");
        }
    }

    private a() {
    }

    public final void d(Activity activity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) decorView;
            SwipeUpCloseView swipeUpCloseView = (SwipeUpCloseView) viewGroup.findViewWithTag("FLOAT_VIEW_TAG");
            if (swipeUpCloseView != null) {
                swipeUpCloseView.onActivityResume(activity);
                return;
            }
            SwipeUpCloseView swipeUpCloseView2 = new SwipeUpCloseView(activity, null, 0, 6, null);
            swipeUpCloseView2.setTag("FLOAT_VIEW_TAG");
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 49;
            layoutParams.topMargin = ImmersionBar.getStatusBarHeight(activity);
            layoutParams.leftMargin = a0.a(12.0f);
            layoutParams.rightMargin = a0.a(12.0f);
            viewGroup.addView(swipeUpCloseView2, layoutParams);
            swipeUpCloseView2.onActivityResume(activity);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void e(Activity activity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) decorView;
            AppInstalledTipView appInstalledTipView = (AppInstalledTipView) viewGroup.findViewWithTag("INSTALLED_FLOAT_VIEW_TAG");
            if (appInstalledTipView != null) {
                appInstalledTipView.onActivityResume(activity);
                return;
            }
            AppInstalledTipView appInstalledTipView2 = new AppInstalledTipView(activity, null, 0, 6, null);
            appInstalledTipView2.setTag("INSTALLED_FLOAT_VIEW_TAG");
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            BaseMusicFloatActivity baseMusicFloatActivity = activity instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) activity : null;
            if (baseMusicFloatActivity != null) {
                layoutParams.bottomMargin = baseMusicFloatActivity.getTipViewBottomMargin();
            } else {
                layoutParams.bottomMargin = a0.a(12.0f);
            }
            viewGroup.addView(appInstalledTipView2, layoutParams);
            appInstalledTipView2.onActivityResume(activity);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void f(Activity activity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.f(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
            SwipeUpCloseView swipeUpCloseView = (SwipeUpCloseView) ((ViewGroup) decorView).findViewWithTag("FLOAT_VIEW_TAG");
            if (swipeUpCloseView != null) {
                swipeUpCloseView.onActivityPause(activity);
                return;
            }
            Result.m453constructorimpl(Unit.f64096a);
            try {
                View decorView2 = activity.getWindow().getDecorView();
                Intrinsics.f(decorView2, "null cannot be cast to non-null type android.view.ViewGroup");
                AppInstalledTipView appInstalledTipView = (AppInstalledTipView) ((ViewGroup) decorView2).findViewWithTag("INSTALLED_FLOAT_VIEW_TAG");
                if (appInstalledTipView != null) {
                    appInstalledTipView.onActivityPause(activity);
                } else {
                    Result.m453constructorimpl(Unit.f64096a);
                }
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th3));
        }
    }

    public final void g(Application application) {
        Intrinsics.h(application, "application");
        application.registerActivityLifecycleCallbacks(new C0903a());
    }
}
