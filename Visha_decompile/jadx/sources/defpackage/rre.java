package defpackage;

import android.app.Activity;
import android.app.Application;

public final class rre implements wre {
    public final Activity a;

    public rre(xre xreVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.a);
    }
}
