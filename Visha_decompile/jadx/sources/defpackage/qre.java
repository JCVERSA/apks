package defpackage;

import android.app.Activity;
import android.app.Application;

public final class qre implements wre {
    public final Activity a;

    public qre(xre xreVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.a);
    }
}
