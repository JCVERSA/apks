package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public final class nue implements uue {
    public final Activity a;
    public final Bundle b;

    public nue(vue vueVar, Activity activity, Bundle bundle) {
        this.a = activity;
        this.b = bundle;
    }

    @Override
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.a, this.b);
    }
}
