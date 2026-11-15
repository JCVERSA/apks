package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import defpackage.ch8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    public static final a f = new a();
    public final AtomicBoolean b = new AtomicBoolean();
    public final AtomicBoolean c = new AtomicBoolean();
    public final ArrayList d = new ArrayList();
    public boolean e = false;

    public interface InterfaceC0092a {
        void a(boolean z);
    }

    public static a b() {
        return f;
    }

    public static void c(Application application) {
        a aVar = f;
        synchronized (aVar) {
            try {
                if (!aVar.e) {
                    application.registerActivityLifecycleCallbacks(aVar);
                    application.registerComponentCallbacks(aVar);
                    aVar.e = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(InterfaceC0092a interfaceC0092a) {
        synchronized (f) {
            this.d.add(interfaceC0092a);
        }
    }

    public boolean d() {
        return this.b.get();
    }

    public boolean e(boolean z) {
        AtomicBoolean atomicBoolean = this.c;
        if (!atomicBoolean.get()) {
            if (ch8.b()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!atomicBoolean.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.b.set(true);
            }
        }
        return d();
    }

    public final void f(boolean z) {
        synchronized (f) {
            try {
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    ((InterfaceC0092a) it.next()).a(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        AtomicBoolean atomicBoolean = this.c;
        boolean zCompareAndSet = this.b.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (zCompareAndSet) {
            f(false);
        }
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override
    public final void onActivityPaused(Activity activity) {
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        AtomicBoolean atomicBoolean = this.c;
        boolean zCompareAndSet = this.b.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (zCompareAndSet) {
            f(false);
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

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override
    public final void onLowMemory() {
    }

    @Override
    public final void onTrimMemory(int i) {
        if (i == 20 && this.b.compareAndSet(false, true)) {
            this.c.set(true);
            f(true);
        }
    }
}
