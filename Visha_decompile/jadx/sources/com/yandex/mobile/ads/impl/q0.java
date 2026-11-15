package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import defpackage.y45;

public final class q0 implements Application.ActivityLifecycleCallbacks {
    private final s0 a;

    public q0(s0 s0Var) {
        y45.j(s0Var, "referenceHolder");
        this.a = s0Var;
    }

    public final Activity a() {
        return this.a.a();
    }

    public final Activity b() {
        return this.a.b();
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        y45.j(activity, "activity");
        this.a.a(activity);
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        y45.j(activity, "activity");
        this.a.b(activity);
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        y45.j(activity, "activity");
        if (activity.isFinishing()) {
            this.a.b(activity);
        }
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        y45.j(activity, "activity");
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        y45.j(activity, "activity");
        y45.j(bundle, "outState");
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        y45.j(activity, "activity");
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        y45.j(activity, "activity");
    }
}
