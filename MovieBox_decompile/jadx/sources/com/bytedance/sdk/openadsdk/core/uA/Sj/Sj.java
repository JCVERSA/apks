package com.bytedance.sdk.openadsdk.core.uA.Sj;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public class Sj implements Application.ActivityLifecycleCallbacks {
    private static volatile Sj Sj;
    private final sP sP;

    private Sj(Application application) {
        this.sP = sP.Sj(application);
    }

    public static Sj Sj(Application application) {
        if (Sj == null) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null) {
                        Sj = new Sj(application);
                        application.registerActivityLifecycleCallbacks(Sj);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    @Override
    public void onActivityStarted(Activity activity) {
        sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.Sj(activity);
        }
    }

    @Override
    public void onActivityStopped(Activity activity) {
        sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.sP(activity);
        }
    }

    public String Sj(String str, long j10, int i10) {
        sP sPVar = this.sP;
        if (sPVar != null) {
            return sPVar.Sj(str, j10, i10);
        }
        return "null";
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityPostResumed(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
