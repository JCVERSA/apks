package defpackage;

import android.app.Activity;
import android.app.Application;

public final class que implements uue {
    public final Activity a;

    public que(vue vueVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.a);
    }
}
