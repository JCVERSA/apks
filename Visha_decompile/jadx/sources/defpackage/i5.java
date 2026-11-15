package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public abstract class i5 implements Application.ActivityLifecycleCallbacks {
    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
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
