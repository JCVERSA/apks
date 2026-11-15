package com.facebook.ads.internal.util.common;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

@Keep
public class ANActivityLifecycleCallbacksListener implements Application.ActivityLifecycleCallbacks {
    public static final int ACTIVITY_CREATED = 1;
    public static final int ACTIVITY_DESTROYED = 6;
    public static final int ACTIVITY_PAUSED = 4;
    public static final int ACTIVITY_RESUMED = 3;
    public static final int ACTIVITY_STARTED = 2;
    public static final int ACTIVITY_STOPPED = 5;

    @Nullable
    private static ANActivityLifecycleCallbacksListener sANActivityLifecycleCallbacksListener;
    private static final Map<Activity, Integer> sActivityStateMap = Collections.synchronizedMap(new WeakHashMap());

    @Nullable
    public static synchronized ANActivityLifecycleCallbacksListener getANActivityLifecycleCallbacksListener() {
        return sANActivityLifecycleCallbacksListener;
    }

    public static void registerActivityCallbacks(Context context) {
        Context applicationContext = context.getApplicationContext();
        synchronized (ANActivityLifecycleCallbacksListener.class) {
            try {
                if ((applicationContext instanceof Application) && sANActivityLifecycleCallbacksListener == null) {
                    ANActivityLifecycleCallbacksListener aNActivityLifecycleCallbacksListener = new ANActivityLifecycleCallbacksListener();
                    sANActivityLifecycleCallbacksListener = aNActivityLifecycleCallbacksListener;
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(aNActivityLifecycleCallbacksListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void unregisterActivityCallbacks(Context context) {
        Context applicationContext = context.getApplicationContext();
        synchronized (ANActivityLifecycleCallbacksListener.class) {
            try {
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).unregisterActivityLifecycleCallbacks(sANActivityLifecycleCallbacksListener);
                    sANActivityLifecycleCallbacksListener = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Map<Activity, Integer> getActivityStateMap() {
        return sActivityStateMap;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        sActivityStateMap.put(activity, 1);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        sActivityStateMap.put(activity, 6);
    }

    @Override
    public void onActivityPaused(Activity activity) {
        sActivityStateMap.put(activity, 4);
    }

    @Override
    public void onActivityResumed(Activity activity) {
        sActivityStateMap.put(activity, 3);
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        sActivityStateMap.put(activity, 2);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        sActivityStateMap.put(activity, 5);
    }
}
