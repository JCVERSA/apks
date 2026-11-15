package defpackage;

import android.app.Activity;
import android.app.Application;

public final class rue implements uue {
    public final Activity a;

    public rue(vue vueVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.a);
    }
}
