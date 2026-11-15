package mgtv.qt;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import defpackage.hld;
import defpackage.s3d;
import defpackage.s4d;

public final class b implements Application.ActivityLifecycleCallbacks {
    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        c.l = 0;
        activity.getLocalClassName();
        s3d.a = "";
        j.b(new ae(this), 1000L);
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        c.l = 1;
        s3d.a = activity.getLocalClassName();
        try {
            if (s3d.c != 0) {
                c.c(c.k, new s4d(s3d.c, s3d.a, "0.1", (byte) 0));
                return;
            }
            long unused = s3d.c = System.currentTimeMillis();
            c.f(hld.p(activity.getApplicationContext()) + " 到前台 ActivityName: " + s3d.a);
            c.c(c.k, new s4d(s3d.c, s3d.a, "0"));
            c.m();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityStarted(Activity activity) {
    }

    @Override
    public final void onActivityStopped(Activity activity) {
    }
}
