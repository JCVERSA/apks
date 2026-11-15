package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.lang.ref.WeakReference;

public final class vue implements Application.ActivityLifecycleCallbacks {
    public final Application b;
    public final WeakReference c;
    public boolean d = false;

    public vue(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.c = new WeakReference(activityLifecycleCallbacks);
        this.b = application;
    }

    public final void a(uue uueVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.c.get();
            if (activityLifecycleCallbacks != null) {
                uueVar.a(activityLifecycleCallbacks);
            } else {
                if (this.d) {
                    return;
                }
                this.b.unregisterActivityLifecycleCallbacks(this);
                this.d = true;
            }
        } catch (Exception e) {
            int i = zze.zza;
            zzo.zzh("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new nue(this, activity, bundle));
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        a(new tue(this, activity));
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        a(new que(this, activity));
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        a(new pue(this, activity));
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new sue(this, activity, bundle));
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        a(new oue(this, activity));
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        a(new rue(this, activity));
    }
}
