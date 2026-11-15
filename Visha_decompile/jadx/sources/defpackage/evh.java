package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

public class evh implements Application.ActivityLifecycleCallbacks {
    public boolean b;
    public boolean c;
    public dvh d;

    public final void a(boolean z) {
        if (this.c != z) {
            this.c = z;
            if (this.b) {
                b(z);
                dvh dvhVar = this.d;
                if (dvhVar != null) {
                    dvhVar.zzc(z);
                }
            }
        }
    }

    public void b(boolean z) {
    }

    public boolean c() {
        return false;
    }

    public final void d(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public final void e(dvh dvhVar) {
        this.d = dvhVar;
    }

    public final void f() {
        this.b = true;
        boolean zH = h();
        this.c = zH;
        b(zH);
    }

    public final void g() {
        this.b = false;
        this.d = null;
    }

    public final boolean h() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo.importance == 100 || c();
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override
    public final void onActivityPaused(Activity activity) {
    }

    @Override
    public final void onActivityResumed(Activity activity) {
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        a(true);
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        a(h());
    }
}
