package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzce;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzfp;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.buh;
import defpackage.cye;
import defpackage.fy0;
import defpackage.im5;
import defpackage.iuh;
import defpackage.juh;
import defpackage.wd8;
import defpackage.zth;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class z5 {
    public final ClientApi a;
    public final Context b;
    public final int c;
    public final zzboy d;
    public zzfp e;
    public final zzce g;
    public final Queue h;
    public final zth i;
    public final ScheduledExecutorService k;
    public buh n;
    public final fy0 o;
    public final AtomicBoolean f = new AtomicBoolean(true);
    public final AtomicBoolean j = new AtomicBoolean(false);
    public final AtomicBoolean l = new AtomicBoolean(true);
    public final AtomicBoolean m = new AtomicBoolean(false);

    public z5(ClientApi clientApi, Context context, int i, zzboy zzboyVar, zzfp zzfpVar, zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zth zthVar, fy0 fy0Var) {
        this.a = clientApi;
        this.b = context;
        this.c = i;
        this.d = zzboyVar;
        this.e = zzfpVar;
        this.g = zzceVar;
        this.h = new PriorityQueue(Math.max(1, zzfpVar.zzd), new zzfjh(this));
        this.k = scheduledExecutorService;
        this.i = zthVar;
        this.o = fy0Var;
    }

    public static final String h(zzdx zzdxVar) {
        if (zzdxVar instanceof zzcuv) {
            return ((zzcuv) zzdxVar).zzl();
        }
        return null;
    }

    public static double k(z5 z5Var, zzdx zzdxVar) {
        if (zzdxVar instanceof zzcuv) {
            return ((zzcuv) zzdxVar).zzc();
        }
        return 0.0d;
    }

    public final synchronized void A(int i) {
        wd8.a(i >= 5);
        this.i.d(i);
    }

    public final synchronized void B() {
        this.f.set(true);
        this.l.set(true);
        this.k.submit(new zzfji(this));
    }

    public final void C(buh buhVar) {
        this.n = buhVar;
    }

    public final void D() {
        this.f.set(false);
        this.l.set(false);
    }

    public final void E(int i) {
        wd8.a(i > 0);
        AdFormat adFormat = AdFormat.getAdFormat(this.e.zzb);
        int i2 = this.e.zzd;
        synchronized (this) {
            try {
                zzfp zzfpVar = this.e;
                this.e = new zzfp(zzfpVar.zza, zzfpVar.zzb, zzfpVar.zzc, i > 0 ? i : zzfpVar.zzd);
                Queue queue = this.h;
                if (queue.size() > i) {
                    if (((Boolean) zzbd.zzc().b(cye.u)).booleanValue()) {
                        ArrayList arrayList = new ArrayList();
                        for (int i3 = 0; i3 < i; i3++) {
                            iuh iuhVar = (iuh) queue.poll();
                            if (iuhVar != null) {
                                arrayList.add(iuhVar);
                            }
                        }
                        queue.clear();
                        queue.addAll(arrayList);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        buh buhVar = this.n;
        if (buhVar == null || adFormat == null) {
            return;
        }
        buhVar.a(adFormat, i2, i, this.o.currentTimeMillis());
    }

    public final synchronized boolean F() {
        f();
        return !this.h.isEmpty();
    }

    public final synchronized void G(Object obj) {
        fy0 fy0Var = this.o;
        iuh iuhVar = new iuh(obj, fy0Var);
        this.h.add(iuhVar);
        zzdx zzdxVarI = i(obj);
        long jCurrentTimeMillis = fy0Var.currentTimeMillis();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfjj(this));
        zzfjk zzfjkVar = new zzfjk(this, jCurrentTimeMillis, zzdxVarI);
        ScheduledExecutorService scheduledExecutorService = this.k;
        scheduledExecutorService.execute(zzfjkVar);
        scheduledExecutorService.schedule(new zzfji(this), iuhVar.a(), TimeUnit.MILLISECONDS);
    }

    public final synchronized void H(Throwable th) {
        try {
            this.j.set(false);
            if ((th instanceof zzfiq) && ((zzfiq) th).zza() == 0) {
                throw null;
            }
            g(true);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void a(Object obj) {
        try {
            this.j.set(false);
            if (obj != null) {
                this.i.c();
                this.m.set(true);
                G(obj);
            }
            g(obj == null);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        if (this.l.get()) {
            try {
                this.g.zze(this.e);
            } catch (RemoteException unused) {
                int i = zze.zza;
                zzo.zzj("Failed to call onAdsAvailable");
            }
        }
    }

    public final synchronized void c() {
        if (this.l.get()) {
            try {
                this.g.zzf(this.e);
            } catch (RemoteException unused) {
                int i = zze.zza;
                zzo.zzj("Failed to call onAdsExhausted");
            }
        }
    }

    public final synchronized void d() {
        AtomicBoolean atomicBoolean = this.m;
        if (atomicBoolean.get() && this.h.isEmpty()) {
            atomicBoolean.set(false);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfjl(this));
            this.k.execute(new zzfjm(this));
        }
    }

    public final synchronized void e(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.j.set(false);
        int i = zzeVar.zza;
        if (i != 1 && i != 8 && i != 10 && i != 11) {
            g(true);
            return;
        }
        zzfp zzfpVar = this.e;
        String str = "Preloading " + zzfpVar.zzb + ", for adUnitId:" + zzfpVar.zza + ", Ad load failed. Stop preloading due to non-retriable error:";
        int i2 = zze.zza;
        zzo.zzi(str);
        this.f.set(false);
    }

    public final synchronized void f() {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            if (((iuh) it.next()).d()) {
                it.remove();
            }
        }
    }

    public final synchronized void g(boolean z) {
        try {
            zth zthVar = this.i;
            if (zthVar.e()) {
                return;
            }
            if (z) {
                zthVar.b();
            }
            this.k.schedule(new zzfji(this), zthVar.a(), TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract zzdx i(Object obj);

    public abstract im5 j(Context context);

    public final synchronized int l() {
        return this.h.size();
    }

    public final synchronized z5 n() {
        this.k.submit(new zzfji(this));
        return this;
    }

    public final synchronized Object p() {
        iuh iuhVar = (iuh) this.h.peek();
        if (iuhVar == null) {
            return null;
        }
        return iuhVar.c();
    }

    public final synchronized Object q() {
        try {
            this.i.c();
            Queue queue = this.h;
            iuh iuhVar = (iuh) queue.poll();
            this.m.set(iuhVar != null);
            if (iuhVar == null) {
                iuhVar = null;
            } else if (!queue.isEmpty()) {
                iuh iuhVar2 = (iuh) queue.peek();
                AdFormat adFormat = AdFormat.getAdFormat(this.e.zzb);
                String strH = h(i(iuhVar.c()));
                if (iuhVar2 != null && adFormat != null && strH != null && iuhVar2.b() < iuhVar.b()) {
                    this.n.g(adFormat, this.o.currentTimeMillis(), this.e.zzd, l(), strH);
                }
            }
            z();
            if (iuhVar == null) {
                return null;
            }
            return iuhVar.c();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized String s() {
        Object objP;
        objP = p();
        return h(objP == null ? null : i(objP));
    }

    public final void y() {
        this.h.clear();
    }

    public final synchronized void z() {
        im5 im5VarJ;
        try {
            f();
            d();
            AtomicBoolean atomicBoolean = this.j;
            if (!atomicBoolean.get() && this.f.get() && this.h.size() < this.e.zzd) {
                atomicBoolean.set(true);
                Activity activityA = zzv.zzb().a();
                if (activityA == null) {
                    String strValueOf = String.valueOf(this.e.zza);
                    int i = zze.zza;
                    zzo.zzj("Empty activity context at preloading: ".concat(strValueOf));
                    im5VarJ = j(this.b);
                } else {
                    im5VarJ = j(activityA);
                }
                j8.r(im5VarJ, new juh(this), this.k);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
