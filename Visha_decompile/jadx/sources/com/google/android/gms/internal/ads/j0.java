package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.ave;
import defpackage.cye;
import defpackage.pzh;
import defpackage.ubc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class j0 implements Application.ActivityLifecycleCallbacks {
    public Activity b;
    public Context c;
    public Runnable i;
    public long k;
    public final Object d = new Object();
    public boolean e = true;
    public boolean f = false;
    public final List g = new ArrayList();
    public final List h = new ArrayList();
    public boolean j = false;

    public final Activity a() {
        return this.b;
    }

    public final Context b() {
        return this.c;
    }

    public final void f(ave aveVar) {
        synchronized (this.d) {
            this.g.add(aveVar);
        }
    }

    public final void g(Application application, Context context) {
        if (this.j) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            k((Activity) context);
        }
        this.c = application;
        this.k = ((Long) zzbd.zzc().b(cye.g1)).longValue();
        this.j = true;
    }

    public final void h(ave aveVar) {
        synchronized (this.d) {
            this.g.remove(aveVar);
        }
    }

    public final void k(Activity activity) {
        synchronized (this.d) {
            try {
                if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                    this.b = activity;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.d) {
            try {
                Activity activity2 = this.b;
                if (activity2 == null) {
                    return;
                }
                if (activity2.equals(activity)) {
                    this.b = null;
                }
                Iterator it = this.h.iterator();
                while (it.hasNext()) {
                    ubc.a(it.next());
                    try {
                        throw null;
                    } catch (Exception e) {
                        zzv.zzp().x(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        int i = zze.zza;
                        zzo.zzh("", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        k(activity);
        synchronized (this.d) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                ubc.a(it.next());
                try {
                    throw null;
                } catch (Exception e) {
                    zzv.zzp().x(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    int i = zze.zza;
                    zzo.zzh("", e);
                }
            }
        }
        this.f = true;
        Runnable runnable = this.i;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(runnable);
        }
        pzh pzhVar = com.google.android.gms.ads.internal.util.zzs.zza;
        zzayy zzayyVar = new zzayy(this);
        this.i = zzayyVar;
        pzhVar.postDelayed(zzayyVar, this.k);
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        k(activity);
        this.f = false;
        boolean z = this.e;
        this.e = true;
        Runnable runnable = this.i;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(runnable);
        }
        synchronized (this.d) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                ubc.a(it.next());
                try {
                    throw null;
                } catch (Exception e) {
                    zzv.zzp().x(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    int i = zze.zza;
                    zzo.zzh("", e);
                }
            }
            if (z) {
                int i2 = zze.zza;
                zzo.zze("App is still foreground.");
            } else {
                Iterator it2 = this.g.iterator();
                while (it2.hasNext()) {
                    try {
                        ((ave) it2.next()).zza(true);
                    } catch (Exception e2) {
                        int i3 = zze.zza;
                        zzo.zzh("", e2);
                    }
                }
            }
        }
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        k(activity);
    }

    @Override
    public final void onActivityStopped(Activity activity) {
    }
}
