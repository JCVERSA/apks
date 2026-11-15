package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public class g5 implements Application.ActivityLifecycleCallbacks {
    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity != null) {
            wi5.a(activity);
        }
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPaused(Activity activity) {
        cl4.f().b();
    }

    @Override
    public void onActivityResumed(Activity activity) {
        cl4.f().a(activity);
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
    }

    @Override
    public void onActivityStopped(Activity activity) {
    }
}
