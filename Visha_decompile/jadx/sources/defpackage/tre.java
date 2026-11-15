package defpackage;

import android.app.Activity;
import android.app.Application;

public final class tre implements wre {
    public final Activity a;

    public tre(xre xreVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.a);
    }
}
