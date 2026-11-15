package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import defpackage.zfb;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public final class i0 implements g0 {
    private static final Object f = new Object();
    private static volatile i0 g;
    private final Object a = new Object();
    private final WeakHashMap b = new WeakHashMap();
    private final WeakHashMap c = new WeakHashMap();
    private final a d = new a();
    private boolean e;

    public static final class a implements Application.ActivityLifecycleCallbacks {
        public a() {
        }

        private final HashSet a(WeakHashMap weakHashMap) {
            HashSet hashSet;
            synchronized (i0.this.a) {
                Set setKeySet = weakHashMap.keySet();
                hashSet = new HashSet(setKeySet.size());
                for (Object obj : setKeySet) {
                    if (obj != null) {
                        hashSet.add(obj);
                    }
                }
            }
            return hashSet;
        }

        @Override
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            y45.j(activity, "activity");
            Iterator it = a(i0.this.c).iterator();
            while (it.hasNext()) {
                ((lr1) it.next()).a(activity, bundle);
            }
        }

        @Override
        public final void onActivityDestroyed(Activity activity) {
            y45.j(activity, "activity");
        }

        @Override
        public final void onActivityPaused(Activity activity) {
            y45.j(activity, "activity");
            Iterator it = a(i0.this.b).iterator();
            while (it.hasNext()) {
                ((r0) it.next()).a(activity);
            }
        }

        @Override
        public final void onActivityResumed(Activity activity) {
            y45.j(activity, "activity");
            Iterator it = a(i0.this.b).iterator();
            while (it.hasNext()) {
                ((r0) it.next()).b(activity);
            }
        }

        @Override
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            y45.j(activity, "activity");
            y45.j(bundle, "outState");
            Iterator it = a(i0.this.c).iterator();
            while (it.hasNext()) {
                ((lr1) it.next()).b(activity, bundle);
            }
        }

        @Override
        public final void onActivityStarted(Activity activity) {
            y45.j(activity, "activity");
        }

        @Override
        public final void onActivityStopped(Activity activity) {
            y45.j(activity, "activity");
            i0.this.b(activity);
        }
    }

    @Override
    public final void b(Context context, r0 r0Var) {
        y45.j(context, "context");
        y45.j(r0Var, "listener");
        synchronized (this.a) {
            try {
                this.b.put(r0Var, null);
                if (!c()) {
                    a(context);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c() {
        boolean z;
        synchronized (this.a) {
            z = this.e;
        }
        return z;
    }

    @VisibleForTesting
    public final void a(Context context) {
        y45.j(context, "context");
        try {
            Context applicationContext = context.getApplicationContext();
            y45.h(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this.d);
            this.e = true;
        } catch (Throwable unused) {
            int i = sp0.b;
            y45.j(new Object[0], "args");
        }
    }

    @Override
    public final void a(Context context, r0 r0Var) {
        y45.j(context, "context");
        y45.j(r0Var, "listener");
        synchronized (this.a) {
            this.b.remove(r0Var);
            b(context);
            zfb zfbVar = zfb.a;
        }
    }

    @Override
    public final void b(Context context, l0.a aVar) {
        y45.j(context, "context");
        y45.j(aVar, "listener");
        synchronized (this.a) {
            try {
                this.c.put(aVar, null);
                if (!c()) {
                    a(context);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Context context) {
        synchronized (this.a) {
            try {
                if (this.b.isEmpty() && this.c.isEmpty()) {
                    y45.j(context, "context");
                    try {
                        if (c()) {
                            Context applicationContext = context.getApplicationContext();
                            y45.h(applicationContext, "null cannot be cast to non-null type android.app.Application");
                            ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this.d);
                            this.e = false;
                        }
                    } catch (Throwable unused) {
                        int i = sp0.b;
                        y45.j(new Object[0], "args");
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void a(Context context, l0.a aVar) {
        y45.j(context, "context");
        y45.j(aVar, "listener");
        synchronized (this.a) {
            this.c.remove(aVar);
            b(context);
            zfb zfbVar = zfb.a;
        }
    }
}
