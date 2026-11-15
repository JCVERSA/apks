package com.cloud.tmc.miniapp.utils.toast;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ActivityStack implements Application.ActivityLifecycleCallbacks {
    public static final Companion Companion = new Companion(null);
    private static ActivityStack sInstance;
    private WeakReference<Activity> mForegroundActivity;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ActivityStack getInstance() {
            if (ActivityStack.sInstance == null) {
                synchronized (this) {
                    try {
                        if (ActivityStack.sInstance == null) {
                            ActivityStack.sInstance = new ActivityStack();
                        }
                        Unit unit = Unit.f64096a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            ActivityStack activityStack = ActivityStack.sInstance;
            Intrinsics.e(activityStack);
            return activityStack;
        }

        private Companion() {
        }
    }

    public final Activity getForegroundActivity() {
        WeakReference<Activity> weakReference = this.mForegroundActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
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
        WeakReference<Activity> weakReference = this.mForegroundActivity;
        if ((weakReference != null ? weakReference.get() : null) != activity) {
            return;
        }
        this.mForegroundActivity = null;
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.mForegroundActivity = new WeakReference<>(activity);
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

    public final void register(Application application) {
        if (application == null) {
            return;
        }
        application.unregisterActivityLifecycleCallbacks(this);
        application.registerActivityLifecycleCallbacks(this);
    }
}
