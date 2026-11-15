package com.google.firebase.sessions;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class a0 implements Application.ActivityLifecycleCallbacks {

    public static final a0 f31804a = new a0();

    private static boolean f31805b;

    private static SessionLifecycleClient f31806c;

    private a0() {
    }

    public final void a(SessionLifecycleClient sessionLifecycleClient) {
        f31806c = sessionLifecycleClient;
        if (sessionLifecycleClient == null || !f31805b) {
            return;
        }
        f31805b = false;
        sessionLifecycleClient.k();
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
        SessionLifecycleClient sessionLifecycleClient = f31806c;
        if (sessionLifecycleClient != null) {
            sessionLifecycleClient.h();
        }
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Unit unit;
        Intrinsics.h(activity, "activity");
        SessionLifecycleClient sessionLifecycleClient = f31806c;
        if (sessionLifecycleClient != null) {
            sessionLifecycleClient.k();
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        if (unit == null) {
            f31805b = true;
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
