package defpackage;

import android.app.Activity;
import android.app.Application;

public final class pue implements uue {
    public final Activity a;

    public pue(vue vueVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.a);
    }
}
