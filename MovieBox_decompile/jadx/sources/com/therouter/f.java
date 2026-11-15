package com.therouter;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class f implements Application.ActivityLifecycleCallbacks {

    public static final f f39761a = new f();

    private static HashMap f39762b = new HashMap();

    private static boolean f39763c;

    private f() {
    }

    public final void a(String key, Function1 function1) {
        Intrinsics.h(key, "key");
        f39762b.put(key, new WeakReference(function1));
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Function1 function1;
        Intrinsics.h(activity, "activity");
        if (!f39763c) {
            f39763c = true;
            jf.f.b();
        }
        WeakReference weakReference = (WeakReference) f39762b.get(activity.getClass().getName());
        if (weakReference == null || (function1 = (Function1) weakReference.get()) == null) {
            return;
        }
        function1.invoke(activity);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        f39762b.remove(activity.getClass().getName());
    }

    @Override
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
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
