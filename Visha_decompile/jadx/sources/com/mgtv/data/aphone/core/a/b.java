package com.mgtv.data.aphone.core.a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public class b implements Application.ActivityLifecycleCallbacks {
    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        com.mgtv.data.aphone.core.e.a.a().a(activity, bundle);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        com.mgtv.data.aphone.core.e.a.a().d(activity);
    }

    @Override
    public void onActivityPaused(Activity activity) {
        com.mgtv.data.aphone.core.e.a.a().c(activity);
    }

    @Override
    public void onActivityResumed(Activity activity) {
        com.mgtv.data.aphone.core.e.a.a().b(activity);
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        com.mgtv.data.aphone.core.e.a.a().b(activity, bundle);
    }

    @Override
    public void onActivityStarted(Activity activity) {
        com.mgtv.data.aphone.core.e.a.a().a(activity);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        com.mgtv.data.aphone.core.e.a.a().e(activity);
    }
}
