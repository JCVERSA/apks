package defpackage;

import android.app.Activity;
import android.app.Application;

public final class tue implements uue {
    public final Activity a;

    public tue(vue vueVar, Activity activity) {
        this.a = activity;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.a);
    }
}
