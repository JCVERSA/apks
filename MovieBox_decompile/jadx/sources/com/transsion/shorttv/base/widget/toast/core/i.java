package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

public final class i implements Application.ActivityLifecycleCallbacks {

    private Activity f50984a;

    private ToastImpl f50985b;

    public i(Activity activity) {
        this.f50984a = activity;
    }

    public final Activity a() {
        return this.f50984a;
    }

    public final void b(ToastImpl toastImpl) {
        this.f50985b = toastImpl;
        Activity activity = this.f50984a;
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Intrinsics.e(activity);
            activity.registerActivityLifecycleCallbacks(this);
        } else {
            Intrinsics.e(activity);
            activity.getApplication().registerActivityLifecycleCallbacks(this);
        }
    }

    public final void c() {
        this.f50985b = null;
        Activity activity = this.f50984a;
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Intrinsics.e(activity);
            activity.unregisterActivityLifecycleCallbacks(this);
        } else {
            Intrinsics.e(activity);
            activity.getApplication().unregisterActivityLifecycleCallbacks(this);
        }
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (this.f50984a != activity) {
            return;
        }
        ToastImpl toastImpl = this.f50985b;
        if (toastImpl != null) {
            Intrinsics.e(toastImpl);
            toastImpl.e();
        }
        c();
        this.f50984a = null;
    }

    @Override
    public void onActivityPaused(Activity activity) {
        ToastImpl toastImpl;
        Intrinsics.h(activity, "activity");
        if (this.f50984a == activity && (toastImpl = this.f50985b) != null) {
            Intrinsics.e(toastImpl);
            toastImpl.e();
        }
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
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
