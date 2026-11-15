package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements Application.ActivityLifecycleCallbacks {

    public static final C0632a f50961b = new C0632a(null);

    private Activity f50962a;

    public static final class C0632a {
        public C0632a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Application application) {
            Intrinsics.h(application, "application");
            a aVar = new a();
            application.registerActivityLifecycleCallbacks(aVar);
            return aVar;
        }

        private C0632a() {
        }
    }

    public final Activity a() {
        return this.f50962a;
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
        if (this.f50962a != activity) {
            return;
        }
        this.f50962a = null;
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.f50962a = activity;
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
