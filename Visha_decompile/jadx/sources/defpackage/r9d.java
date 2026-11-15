package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

public class r9d implements Application.ActivityLifecycleCallbacks {
    public boolean b;
    public boolean c;
    public a d;

    public interface a {
        void a(boolean z);
    }

    public void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public void b(a aVar) {
        this.d = aVar;
    }

    public final void c(boolean z) {
        if (this.c != z) {
            this.c = z;
            if (this.b) {
                f(z);
                a aVar = this.d;
                if (aVar != null) {
                    aVar.a(z);
                }
            }
        }
    }

    public final boolean d() {
        return e().importance == 100 || h();
    }

    public ActivityManager.RunningAppProcessInfo e() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    public void f(boolean z) {
    }

    public boolean g() {
        return this.c;
    }

    public boolean h() {
        return false;
    }

    public void i() {
        this.b = true;
        boolean zD = d();
        this.c = zD;
        f(zD);
    }

    public void j() {
        this.b = false;
        this.d = null;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        c(true);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        c(d());
    }
}
