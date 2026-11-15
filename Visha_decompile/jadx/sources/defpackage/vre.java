package defpackage;

import android.app.Activity;
import android.app.Application;

public final class vre implements wre {
    public final Activity a;

    public vre(xre xreVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.a);
    }
}
