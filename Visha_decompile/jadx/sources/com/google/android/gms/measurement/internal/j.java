package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.measurement.zzcf;
import defpackage.cf1;
import defpackage.d7j;
import defpackage.kwg;
import defpackage.m4j;
import defpackage.nlh;
import defpackage.roh;
import defpackage.s4j;
import defpackage.u2j;
import defpackage.wd8;
import defpackage.wzg;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class j extends nlh {
    public final i c;
    public zzee d;
    public volatile Boolean e;
    public final a f;
    public final d7j g;
    public final List h;
    public final a i;

    public j(e eVar) {
        super(eVar);
        this.h = new ArrayList();
        this.g = new d7j(eVar.c());
        this.c = new i(this);
        this.f = new m4j(this, eVar);
        this.i = new s4j(this, eVar);
    }

    public static void L(j jVar, ComponentName componentName) {
        jVar.g();
        if (jVar.d != null) {
            jVar.d = null;
            jVar.a.b().u().b("Disconnected from device MeasurementService", componentName);
            jVar.g();
            jVar.O();
        }
    }

    public final boolean A() {
        g();
        h();
        if (this.e == null) {
            g();
            h();
            roh rohVarF = this.a.F();
            rohVarF.g();
            boolean z = false;
            Boolean boolValueOf = !rohVarF.n().contains("use_service") ? null : Boolean.valueOf(rohVarF.n().getBoolean("use_service", false));
            boolean z2 = true;
            if (boolValueOf == null || !boolValueOf.booleanValue()) {
                this.a.d();
                if (this.a.B().n() == 1) {
                    z = true;
                } else {
                    this.a.b().u().a("Checking service availability");
                    int iN0 = this.a.N().n0(12451000);
                    if (iN0 == 0) {
                        this.a.b().u().a("Service available");
                    } else if (iN0 == 1) {
                        this.a.b().u().a("Service missing");
                    } else if (iN0 != 2) {
                        if (iN0 == 3) {
                            this.a.b().v().a("Service disabled");
                        } else if (iN0 == 9) {
                            this.a.b().v().a("Service invalid");
                        } else if (iN0 != 18) {
                            this.a.b().v().b("Unexpected service status", Integer.valueOf(iN0));
                        } else {
                            this.a.b().v().a("Service updating");
                        }
                        z2 = false;
                    } else {
                        this.a.b().p().a("Service container out of date");
                        if (this.a.N().m0() >= 17443) {
                            z = boolValueOf == null;
                            z2 = false;
                        }
                    }
                    z = true;
                }
                if (!z && this.a.z().y()) {
                    this.a.b().q().a("No way to upload. Consider using the full version of Analytics");
                } else if (z2) {
                    roh rohVarF2 = this.a.F();
                    rohVarF2.g();
                    SharedPreferences.Editor editorEdit = rohVarF2.n().edit();
                    editorEdit.putBoolean("use_service", z);
                    editorEdit.apply();
                }
                z2 = z;
            }
            this.e = Boolean.valueOf(z2);
        }
        return this.e.booleanValue();
    }

    public final zzq B(boolean z) {
        Pair pairA;
        this.a.d();
        wzg wzgVarB = this.a.B();
        String str = null;
        if (z) {
            c cVarB = this.a.b();
            if (cVarB.a.F().d != null && (pairA = cVarB.a.F().d.a()) != null && pairA != roh.x) {
                str = String.valueOf(pairA.second) + StringUtils.PROCESS_POSTFIX_DELIMITER + ((String) pairA.first);
            }
        }
        return wzgVarB.o(str);
    }

    public final void C() {
        g();
        this.a.b().u().b("Processing queued up service tasks", Integer.valueOf(this.h.size()));
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e) {
                this.a.b().q().b("Task exception while flushing queue", e);
            }
        }
        this.h.clear();
        this.i.b();
    }

    public final void D() {
        g();
        this.g.a();
        a aVar = this.f;
        this.a.z();
        aVar.d(((Long) kwg.K.a(null)).longValue());
    }

    public final void E(Runnable runnable) {
        g();
        if (y()) {
            runnable.run();
            return;
        }
        int size = this.h.size();
        this.a.z();
        if (size >= 1000) {
            this.a.b().q().a("Discarding data. Max runnable queue size reached");
            return;
        }
        this.h.add(runnable);
        this.i.d(60000L);
        O();
    }

    public final boolean F() {
        this.a.d();
        return true;
    }

    public final Boolean I() {
        return this.e;
    }

    public final void N() {
        g();
        h();
        zzq zzqVarB = B(true);
        this.a.C().q();
        E(new zziz(this, zzqVarB));
    }

    public final void O() {
        g();
        h();
        if (y()) {
            return;
        }
        if (A()) {
            this.c.c();
            return;
        }
        if (this.a.z().y()) {
            return;
        }
        this.a.d();
        List<ResolveInfo> listQueryIntentServices = this.a.e().getPackageManager().queryIntentServices(new Intent().setClassName(this.a.e(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            this.a.b().q().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        Context contextE = this.a.e();
        this.a.d();
        intent.setComponent(new ComponentName(contextE, "com.google.android.gms.measurement.AppMeasurementService"));
        this.c.b(intent);
    }

    public final void P() {
        g();
        h();
        this.c.d();
        try {
            cf1.b().c(this.a.e(), this.c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.d = null;
    }

    public final void Q(zzcf zzcfVar) {
        g();
        h();
        E(new zziy(this, B(false), zzcfVar));
    }

    public final void R(AtomicReference atomicReference) {
        g();
        h();
        E(new zzix(this, atomicReference, B(false)));
    }

    public final void S(zzcf zzcfVar, String str, String str2) {
        g();
        h();
        E(new zzjk(this, str, str2, B(false), zzcfVar));
    }

    public final void T(AtomicReference atomicReference, String str, String str2, String str3) {
        g();
        h();
        E(new zzjj(this, atomicReference, null, str2, str3, B(false)));
    }

    public final void U(AtomicReference atomicReference, boolean z) {
        g();
        h();
        E(new zziv(this, atomicReference, B(false), z));
    }

    public final void V(zzcf zzcfVar, String str, String str2, boolean z) {
        g();
        h();
        E(new zzit(this, str, str2, B(false), z, zzcfVar));
    }

    public final void W(AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        g();
        h();
        E(new zzjl(this, atomicReference, null, str2, str3, B(false), z));
    }

    @Override
    public final boolean m() {
        return false;
    }

    public final void n(zzaw zzawVar, String str) {
        wd8.l(zzawVar);
        g();
        h();
        F();
        E(new zzjh(this, true, B(true), this.a.C().u(zzawVar), zzawVar, str));
    }

    public final void o(zzcf zzcfVar, zzaw zzawVar, String str) {
        g();
        h();
        if (this.a.N().n0(12451000) == 0) {
            E(new zzjd(this, zzawVar, str, zzcfVar));
        } else {
            this.a.b().v().a("Not bundling data. Service unavailable or out of date");
            this.a.N().E(zzcfVar, new byte[0]);
        }
    }

    public final void p() {
        g();
        h();
        zzq zzqVarB = B(false);
        F();
        this.a.C().p();
        E(new zziw(this, zzqVarB));
    }

    public final void q(zzee zzeeVar, AbstractSafeParcelable abstractSafeParcelable, zzq zzqVar) {
        int size;
        g();
        h();
        F();
        this.a.z();
        int i = 100;
        int i2 = 0;
        while (i2 < 1001 && i == 100) {
            ArrayList arrayList = new ArrayList();
            List listO = this.a.C().o(100);
            if (listO != null) {
                arrayList.addAll(listO);
                size = listO.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i3);
                if (abstractSafeParcelable2 instanceof zzaw) {
                    try {
                        zzeeVar.zzk((zzaw) abstractSafeParcelable2, zzqVar);
                    } catch (RemoteException e) {
                        this.a.b().q().b("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzlc) {
                    try {
                        zzeeVar.zzt((zzlc) abstractSafeParcelable2, zzqVar);
                    } catch (RemoteException e2) {
                        this.a.b().q().b("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzac) {
                    try {
                        zzeeVar.zzn((zzac) abstractSafeParcelable2, zzqVar);
                    } catch (RemoteException e3) {
                        this.a.b().q().b("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    this.a.b().q().a("Discarding data. Unrecognized parcel type.");
                }
            }
            i2++;
            i = size;
        }
    }

    public final void r(zzac zzacVar) {
        wd8.l(zzacVar);
        g();
        h();
        this.a.d();
        E(new zzji(this, true, B(true), this.a.C().t(zzacVar), new zzac(zzacVar), zzacVar));
    }

    public final void s(boolean z) {
        g();
        h();
        if (z) {
            F();
            this.a.C().p();
        }
        if (z()) {
            E(new zzjg(this, B(false)));
        }
    }

    public final void t(u2j u2jVar) {
        g();
        h();
        E(new zzja(this, u2jVar));
    }

    public final void u(Bundle bundle) {
        g();
        h();
        E(new zzjb(this, B(false), bundle));
    }

    public final void v() {
        g();
        h();
        E(new zzjf(this, B(true)));
    }

    public final void w(zzee zzeeVar) {
        g();
        wd8.l(zzeeVar);
        this.d = zzeeVar;
        D();
        C();
    }

    public final void x(zzlc zzlcVar) {
        g();
        h();
        F();
        E(new zziu(this, B(true), this.a.C().v(zzlcVar), zzlcVar));
    }

    public final boolean y() {
        g();
        h();
        return this.d != null;
    }

    public final boolean z() {
        g();
        h();
        return !A() || this.a.N().m0() >= ((Integer) kwg.h0.a(null)).intValue();
    }
}
