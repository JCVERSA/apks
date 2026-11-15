package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements Application.ActivityLifecycleCallbacks {

    public static final C0561a f40464b = new C0561a(null);

    private Activity f40465a;

    public static final class C0561a {
        public C0561a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Application application) {
            Intrinsics.h(application, "application");
            a aVar = new a();
            application.registerActivityLifecycleCallbacks(aVar);
            return aVar;
        }

        private C0561a() {
        }
    }

    public final Activity a() {
        return this.f40465a;
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
        if (this.f40465a != activity) {
            return;
        }
        this.f40465a = null;
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.f40465a = activity;
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
