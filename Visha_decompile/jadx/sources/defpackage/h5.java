package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public abstract class h5 implements Application.ActivityLifecycleCallbacks {
    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        y45.j(activity, "activity");
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        y45.j(activity, "activity");
    }

    @Override
    public void onActivityPaused(Activity activity) {
        y45.j(activity, "activity");
    }

    @Override
    public void onActivityResumed(Activity activity) {
        y45.j(activity, "activity");
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        y45.j(activity, "activity");
        y45.j(bundle, "outState");
    }
}
