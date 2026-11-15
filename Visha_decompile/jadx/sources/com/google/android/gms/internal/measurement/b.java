package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.fy0;
import defpackage.izh;
import defpackage.kti;
import defpackage.m02;
import defpackage.ndg;
import defpackage.r2j;
import defpackage.ucf;
import defpackage.wd8;
import defpackage.we;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class b {
    public static volatile b j;
    public final String a;
    public final fy0 b;
    public final ExecutorService c;
    public final we d;
    public final List e;
    public int f;
    public boolean g;
    public final String h;
    public volatile zzcc i;

    public b(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !t(str2, str3)) {
            this.a = "FA";
        } else {
            this.a = str;
        }
        this.b = m02.a();
        ucf.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ndg(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.d = new we(this);
        this.e = new ArrayList();
        try {
            if (r2j.a(context, "google_app_id", izh.a(context)) != null && !p()) {
                this.h = null;
                this.g = true;
                Log.w(this.a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException unused) {
        }
        if (t(str2, str3)) {
            this.h = str2;
        } else {
            this.h = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null)) {
                    Log.w(this.a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        }
        s(new zzcx(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new a(this));
        }
    }

    public static b A(Context context, String str, String str2, String str3, Bundle bundle) {
        wd8.l(context);
        if (j == null) {
            synchronized (b.class) {
                try {
                    if (j == null) {
                        j = new b(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return j;
    }

    public static final boolean p() {
        return true;
    }

    public static final boolean t(String str, String str2) {
        return (str2 == null || str == null || p()) ? false : true;
    }

    public final String C() {
        return this.h;
    }

    public final String D() {
        zzbz zzbzVar = new zzbz();
        s(new zzdk(this, zzbzVar));
        return zzbzVar.zzc(120000L);
    }

    public final String E() {
        zzbz zzbzVar = new zzbz();
        s(new zzdb(this, zzbzVar));
        return zzbzVar.zzc(50L);
    }

    public final String F() {
        zzbz zzbzVar = new zzbz();
        s(new zzde(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final String G() {
        zzbz zzbzVar = new zzbz();
        s(new zzdd(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final String H() {
        zzbz zzbzVar = new zzbz();
        s(new zzda(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final List I(String str, String str2) {
        zzbz zzbzVar = new zzbz();
        s(new zzcp(this, str, str2, zzbzVar));
        List list = (List) zzbz.zze(zzbzVar.zzb(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final Map J(String str, String str2, boolean z) {
        zzbz zzbzVar = new zzbz();
        s(new zzdf(this, str, str2, z, zzbzVar));
        Bundle bundleZzb = zzbzVar.zzb(5000L);
        if (bundleZzb == null || bundleZzb.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(bundleZzb.size());
        for (String str3 : bundleZzb.keySet()) {
            Object obj = bundleZzb.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final void N(String str) {
        s(new zzcy(this, str));
    }

    public final void O(String str, String str2, Bundle bundle) {
        s(new zzco(this, str, str2, bundle));
    }

    public final void P(String str) {
        s(new zzcz(this, str));
    }

    public final void Q(String str, Bundle bundle) {
        r(null, str, bundle, false, true, null);
    }

    public final void R(String str, String str2, Bundle bundle) {
        r(str, str2, bundle, true, true, null);
    }

    public final void a(int i, String str, Object obj, Object obj2, Object obj3) {
        s(new zzdg(this, false, 5, str, obj, null, null));
    }

    public final void b(kti ktiVar) {
        wd8.l(ktiVar);
        synchronized (this.e) {
            for (int i = 0; i < this.e.size(); i++) {
                try {
                    if (ktiVar.equals(((Pair) this.e.get(i)).first)) {
                        Log.w(this.a, "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzdv zzdvVar = new zzdv(ktiVar);
            this.e.add(new Pair(ktiVar, zzdvVar));
            if (this.i != null) {
                try {
                    this.i.registerOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            s(new zzdp(this, zzdvVar));
        }
    }

    public final void c() {
        s(new zzcv(this));
    }

    public final void d(Bundle bundle) {
        s(new zzcn(this, bundle));
    }

    public final void e(Bundle bundle) {
        s(new zzct(this, bundle));
    }

    public final void f(Bundle bundle) {
        s(new zzcu(this, bundle));
    }

    public final void g(Activity activity, String str, String str2) {
        s(new zzcr(this, activity, str, str2));
    }

    public final void h(Bundle bundle) {
        s(new zzdn(this, bundle));
    }

    public final void i(Boolean bool) {
        s(new zzcs(this, bool));
    }

    public final void j(long j2) {
        s(new zzcw(this, j2));
    }

    public final void k(String str) {
        s(new zzcq(this, str));
    }

    public final void l(String str, String str2, Object obj, boolean z) {
        s(new zzds(this, str, str2, obj, z));
    }

    public final void m(kti ktiVar) {
        Pair pair;
        wd8.l(ktiVar);
        synchronized (this.e) {
            int i = 0;
            while (true) {
                try {
                    if (i >= this.e.size()) {
                        pair = null;
                        break;
                    } else {
                        if (ktiVar.equals(((Pair) this.e.get(i)).first)) {
                            pair = (Pair) this.e.get(i);
                            break;
                        }
                        i++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (pair == null) {
                Log.w(this.a, "OnEventListener had not been registered.");
                return;
            }
            this.e.remove(pair);
            zzdv zzdvVar = (zzdv) pair.second;
            if (this.i != null) {
                try {
                    this.i.unregisterOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.a, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            s(new zzdq(this, zzdvVar));
        }
    }

    public final void q(Exception exc, boolean z, boolean z2) {
        this.g |= z;
        if (z) {
            Log.w(this.a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            a(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.a, "Error with data collection. Data lost.", exc);
    }

    public final void r(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        s(new zzdr(this, l, str, str2, bundle, z, z2));
    }

    public final void s(zzdt zzdtVar) {
        this.c.execute(zzdtVar);
    }

    public final int u(String str) {
        zzbz zzbzVar = new zzbz();
        s(new zzdj(this, str, zzbzVar));
        Integer num = (Integer) zzbz.zze(zzbzVar.zzb(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final long v() {
        zzbz zzbzVar = new zzbz();
        s(new zzdc(this, zzbzVar));
        Long l = (Long) zzbz.zze(zzbzVar.zzb(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long jNextLong = new Random(System.nanoTime() ^ this.b.currentTimeMillis()).nextLong();
        int i = this.f + 1;
        this.f = i;
        return jNextLong + ((long) i);
    }

    public final Bundle w(Bundle bundle, boolean z) {
        zzbz zzbzVar = new zzbz();
        s(new zzdh(this, bundle, zzbzVar));
        if (z) {
            return zzbzVar.zzb(5000L);
        }
        return null;
    }

    public final we x() {
        return this.d;
    }

    public final zzcc z(Context context, boolean z) {
        try {
            return zzcb.asInterface(DynamiteModule.e(context, DynamiteModule.e, ModuleDescriptor.MODULE_ID).d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            q(e, true, false);
            return null;
        }
    }
}
