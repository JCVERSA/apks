package defpackage;

import android.app.Activity;
import android.app.Application;

public final class sre implements wre {
    public final Activity a;

    public sre(xre xreVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.a);
    }
}
