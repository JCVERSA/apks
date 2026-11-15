package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

public final class xre implements Application.ActivityLifecycleCallbacks {
    public final Application b;
    public final WeakReference c;
    public boolean d = false;

    public xre(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.c = new WeakReference(activityLifecycleCallbacks);
        this.b = application;
    }

    public final void a(wre wreVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.c.get();
            if (activityLifecycleCallbacks != null) {
                wreVar.a(activityLifecycleCallbacks);
            } else {
                if (this.d) {
                    return;
                }
                this.b.unregisterActivityLifecycleCallbacks(this);
                this.d = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new pre(this, activity, bundle));
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        a(new vre(this, activity));
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        a(new sre(this, activity));
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        a(new rre(this, activity));
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new ure(this, activity, bundle));
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        a(new qre(this, activity));
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        a(new tre(this, activity));
    }
}
