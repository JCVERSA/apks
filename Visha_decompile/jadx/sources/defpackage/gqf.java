package defpackage;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbvk;
import com.google.android.gms.internal.ads.zzfgn;
import defpackage.gqf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class gqf implements kzf, b1g, d0g, zza, zzf, h8g, v7g {
    public final Context b;
    public final Executor c;
    public final Executor d;
    public final ScheduledExecutorService e;
    public final vmh f;
    public final hmh g;
    public final sth h;
    public final snh i;
    public final fre j;
    public final bze k;
    public final WeakReference l;
    public final WeakReference m;
    public final iyf n;
    public final a2g o;
    public boolean p;
    public final AtomicBoolean q = new AtomicBoolean();

    public gqf(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, vmh vmhVar, hmh hmhVar, sth sthVar, snh snhVar, View view, ejf ejfVar, fre freVar, bze bzeVar, dze dzeVar, zzfgn zzfgnVar, iyf iyfVar, a2g a2gVar) {
        this.b = context;
        this.c = executor;
        this.d = executor2;
        this.e = scheduledExecutorService;
        this.f = vmhVar;
        this.g = hmhVar;
        this.h = sthVar;
        this.i = snhVar;
        this.j = freVar;
        this.l = new WeakReference(view);
        this.m = new WeakReference(ejfVar);
        this.k = bzeVar;
        this.n = iyfVar;
        this.o = a2gVar;
    }

    public final void z() {
        String strZzh;
        int i;
        hmh hmhVar = this.g;
        List list = hmhVar.d;
        if (list == null || list.isEmpty()) {
            return;
        }
        if (((Boolean) zzbd.zzc().b(cye.L3)).booleanValue()) {
            strZzh = this.j.c().zzh(this.b, (View) this.l.get(), null);
        } else {
            strZzh = null;
        }
        if ((((Boolean) zzbd.zzc().b(cye.F0)).booleanValue() && this.f.b.b.h) || !((Boolean) yze.h.e()).booleanValue()) {
            this.i.a(this.h.e(this.f, hmhVar, false, strZzh, null, y()), this.o);
            return;
        }
        if (((Boolean) yze.g.e()).booleanValue() && ((i = hmhVar.b) == 1 || i == 2 || i == 5)) {
        }
        j8.r((q7i) j8.o(q7i.zzE(j8.h(null)), ((Long) zzbd.zzc().b(cye.i1)).longValue(), TimeUnit.MILLISECONDS, this.e), new fqf(this, strZzh), this.c);
    }

    public final void A(final int i, final int i2) {
        View view;
        if (i <= 0 || !((view = (View) this.l.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            z();
        } else {
            this.e.schedule(new Runnable() {
                @Override
                public final void run() {
                    gqf gqfVar = this.zza;
                    gqfVar.c.execute(new Runnable() {
                        @Override
                        public final void run() {
                            gqfVar.A(i - 1, i);
                        }
                    });
                }
            }, i2, TimeUnit.MILLISECONDS);
        }
    }

    @Override
    public final void a(zzbvk zzbvkVar, String str, String str2) {
        sth sthVar = this.h;
        snh snhVar = this.i;
        hmh hmhVar = this.g;
        snhVar.a(sthVar.f(hmhVar, hmhVar.h, zzbvkVar), null);
    }

    @Override
    public final void h(zze zzeVar) {
        if (((Boolean) zzbd.zzc().b(cye.H1)).booleanValue()) {
            int i = zzeVar.zza;
            hmh hmhVar = this.g;
            ArrayList arrayList = new ArrayList();
            Iterator it = hmhVar.o.iterator();
            while (it.hasNext()) {
                arrayList.add(sth.c((String) it.next(), "@gw_mpe@", "2." + i));
            }
            this.i.a(this.h.d(this.f, hmhVar, arrayList), null);
        }
    }

    @Override
    public final void onAdClicked() {
        if (!(((Boolean) zzbd.zzc().b(cye.F0)).booleanValue() && this.f.b.b.h) && ((Boolean) yze.d.e()).booleanValue()) {
            j8.r((q7i) j8.e(q7i.zzE(this.k.a()), Throwable.class, new m2i() {
                @Override
                public final Object apply(Object obj) {
                    return "failure_click_attok";
                }
            }, zef.g), new eqf(this), this.c);
            return;
        }
        snh snhVar = this.i;
        sth sthVar = this.h;
        vmh vmhVar = this.f;
        hmh hmhVar = this.g;
        snhVar.c(sthVar.d(vmhVar, hmhVar, hmhVar.c), true == zzv.zzp().a(this.b) ? 2 : 1);
    }

    public final List y() {
        if (((Boolean) zzbd.zzc().b(cye.yb)).booleanValue()) {
            zzv.zzq();
            Context context = this.b;
            if (zzs.zzC(context)) {
                zzv.zzq();
                Integer numZzt = zzs.zzt(context);
                if (numZzt != null) {
                    int iMin = Math.min(numZzt.intValue(), 20);
                    ArrayList arrayList = new ArrayList();
                    Iterator it = this.g.d.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Uri.parse((String) it.next()).buildUpon().appendQueryParameter("dspct", Integer.toString(iMin)).toString());
                    }
                    return arrayList;
                }
            }
        }
        return this.g.d;
    }

    @Override
    public final void zza() {
    }

    @Override
    public final void zzb() {
    }

    @Override
    public final void zzc() {
    }

    @Override
    public final void zze() {
        sth sthVar = this.h;
        vmh vmhVar = this.f;
        snh snhVar = this.i;
        hmh hmhVar = this.g;
        snhVar.a(sthVar.d(vmhVar, hmhVar, hmhVar.i), null);
    }

    @Override
    public final void zzf() {
        sth sthVar = this.h;
        vmh vmhVar = this.f;
        snh snhVar = this.i;
        hmh hmhVar = this.g;
        snhVar.a(sthVar.d(vmhVar, hmhVar, hmhVar.g), null);
    }

    @Override
    public final void zzs() {
        if (this.q.compareAndSet(false, true)) {
            int iIntValue = ((Integer) zzbd.zzc().b(cye.U3)).intValue();
            if (iIntValue > 0) {
                A(iIntValue, ((Integer) zzbd.zzc().b(cye.V3)).intValue());
                return;
            }
            if (((Boolean) zzbd.zzc().b(cye.T3)).booleanValue()) {
                this.d.execute(new Runnable() {
                    @Override
                    public final void run() {
                        gqf gqfVar = this.zza;
                        gqfVar.c.execute(new Runnable() {
                            @Override
                            public final void run() {
                                gqfVar.z();
                            }
                        });
                    }
                });
            } else {
                z();
            }
        }
    }

    @Override
    public final synchronized void zzt() {
        iyf iyfVar;
        try {
            if (this.p) {
                ArrayList arrayList = new ArrayList(y());
                hmh hmhVar = this.g;
                arrayList.addAll(hmhVar.f);
                this.i.a(this.h.e(this.f, hmhVar, true, null, null, arrayList), null);
            } else {
                snh snhVar = this.i;
                sth sthVar = this.h;
                vmh vmhVar = this.f;
                hmh hmhVar2 = this.g;
                snhVar.a(sthVar.d(vmhVar, hmhVar2, hmhVar2.m), null);
                if (((Boolean) zzbd.zzc().b(cye.Q3)).booleanValue() && (iyfVar = this.n) != null) {
                    List list = iyfVar.b().m;
                    String strG = iyfVar.a().g();
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(sth.c((String) it.next(), "@gw_adnetstatus@", strG));
                    }
                    long jA = iyfVar.a().a();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(sth.c((String) it2.next(), "@gw_ttr@", Long.toString(jA, 10)));
                    }
                    snhVar.a(sthVar.d(iyfVar.c(), iyfVar.b(), arrayList3), null);
                }
                snhVar.a(sthVar.d(vmhVar, hmhVar2, hmhVar2.f), null);
            }
            this.p = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzu() {
        hmh hmhVar = this.g;
        if (hmhVar.e == 4) {
            this.i.a(this.h.d(this.f, hmhVar, hmhVar.A0), null);
        }
    }

    @Override
    public final void zzv() {
    }

    @Override
    public final void zzw() {
        sth sthVar = this.h;
        vmh vmhVar = this.f;
        snh snhVar = this.i;
        hmh hmhVar = this.g;
        snhVar.a(sthVar.d(vmhVar, hmhVar, hmhVar.u0), null);
    }
}
