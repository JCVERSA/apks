package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.t4;
import defpackage.bng;
import defpackage.cye;
import defpackage.eff;
import defpackage.eoh;
import defpackage.f0f;
import defpackage.im5;
import defpackage.jkg;
import defpackage.jog;
import defpackage.p7g;
import defpackage.vrh;
import defpackage.wrh;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class t4 {
    public final Context f;
    public final WeakReference g;
    public final jkg h;
    public final Executor i;
    public final Executor j;
    public final ScheduledExecutorService k;
    public final bng l;
    public final VersionInfoParcel m;
    public final p7g o;
    public final zzfgq p;
    public boolean a = false;
    public boolean b = false;
    public boolean c = false;
    public final eff e = new eff();
    public final Map n = new ConcurrentHashMap();
    public boolean q = true;
    public final long d = zzv.zzC().elapsedRealtime();

    public t4(Executor executor, Context context, WeakReference weakReference, Executor executor2, jkg jkgVar, ScheduledExecutorService scheduledExecutorService, bng bngVar, VersionInfoParcel versionInfoParcel, p7g p7gVar, zzfgq zzfgqVar) {
        this.h = jkgVar;
        this.f = context;
        this.g = weakReference;
        this.i = executor2;
        this.k = scheduledExecutorService;
        this.j = executor;
        this.l = bngVar;
        this.m = versionInfoParcel;
        this.o = p7gVar;
        this.p = zzfgqVar;
        v("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    public static Object f(t4 t4Var, wrh wrhVar) {
        t4Var.e.c(Boolean.TRUE);
        wrhVar.zzg(true);
        t4Var.p.zzc(wrhVar.zzm());
        return null;
    }

    public static void i(t4 t4Var, Object obj, eff effVar, String str, long j, wrh wrhVar) {
        synchronized (obj) {
            try {
                if (!effVar.isDone()) {
                    t4Var.v(str, false, "Timeout.", (int) (zzv.zzC().elapsedRealtime() - j));
                    t4Var.l.b(str, "timeout");
                    t4Var.o.zzb(str, "timeout");
                    zzfgq zzfgqVar = t4Var.p;
                    wrhVar.zzc("Timeout");
                    wrhVar.zzg(false);
                    zzfgqVar.zzc(wrhVar.zzm());
                    effVar.c(Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void j(t4 t4Var) {
        t4Var.l.e();
        t4Var.o.zze();
        t4Var.b = true;
    }

    public static void l(t4 t4Var) {
        synchronized (t4Var) {
            try {
                if (t4Var.c) {
                    return;
                }
                t4Var.v("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzv.zzC().elapsedRealtime() - t4Var.d));
                t4Var.l.b("com.google.android.gms.ads.MobileAds", "timeout");
                t4Var.o.zzb("com.google.android.gms.ads.MobileAds", "timeout");
                t4Var.e.d(new Exception());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void m(t4 t4Var, String str, zzbll zzbllVar, eoh eohVar, List list) {
        try {
            try {
                if (Objects.equals(str, "com.google.ads.mediation.admob.AdMobAdapter")) {
                    zzbllVar.zzf();
                    return;
                }
                Context context = (Context) t4Var.g.get();
                if (context == null) {
                    context = t4Var.f;
                }
                eohVar.n(context, zzbllVar, list);
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzh("", e);
            }
        } catch (RemoteException e2) {
            throw new zzfuu(e2);
        } catch (zzfbw unused) {
            zzbllVar.zze("Failed to initialize adapter. " + str + " does not implement the initialize() method.");
        }
    }

    public static void o(final t4 t4Var, String str) {
        Context context = t4Var.f;
        int i = 5;
        final wrh wrhVarA = vrh.a(context, 5);
        wrhVarA.zzi();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                final String next = itKeys.next();
                final wrh wrhVarA2 = vrh.a(context, i);
                wrhVarA2.zzi();
                wrhVarA2.zzd(next);
                final Object obj = new Object();
                final eff effVar = new eff();
                im5 im5VarO = j8.o(effVar, ((Long) zzbd.zzc().b(cye.a2)).longValue(), TimeUnit.SECONDS, t4Var.k);
                t4Var.l.c(next);
                t4Var.o.zzc(next);
                final long jElapsedRealtime = zzv.zzC().elapsedRealtime();
                Context context2 = context;
                JSONObject jSONObject2 = jSONObject;
                im5VarO.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        t4.i(this.zza, obj, effVar, next, jElapsedRealtime, wrhVarA2);
                    }
                }, t4Var.i);
                arrayList.add(im5VarO);
                final zzdth zzdthVar = new zzdth(t4Var, obj, next, jElapsedRealtime, wrhVarA2, effVar);
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (jSONObjectOptJSONObject != null) {
                    try {
                        JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("data");
                        int i2 = 0;
                        while (i2 < jSONArray.length()) {
                            JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                            String strOptString = jSONObject3.optString("format", "");
                            JSONObject jSONObjectOptJSONObject2 = jSONObject3.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (jSONObjectOptJSONObject2 != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    bundle.putString(next2, jSONObjectOptJSONObject2.optString(next2, ""));
                                    jSONArray = jSONArray;
                                }
                            }
                            JSONArray jSONArray2 = jSONArray;
                            arrayList2.add(new zzblr(strOptString, bundle));
                            i2++;
                            jSONArray = jSONArray2;
                        }
                    } catch (JSONException unused) {
                    }
                }
                t4Var.v(next, false, "", 0);
                try {
                    final eoh eohVarC = t4Var.h.c(next, new JSONObject());
                    t4Var.j.execute(new Runnable() {
                        @Override
                        public final void run() {
                            t4.m(this.zza, next, zzdthVar, eohVarC, arrayList2);
                        }
                    });
                } catch (zzfbw e) {
                    try {
                        String str2 = "Failed to create Adapter.";
                        if (((Boolean) zzbd.zzc().b(cye.ad)).booleanValue()) {
                            str2 = "Failed to create Adapter. " + e.getMessage();
                        }
                        zzdthVar.zze(str2);
                    } catch (RemoteException e2) {
                        int i3 = zze.zza;
                        zzo.zzh("", e2);
                    }
                }
                jSONObject = jSONObject2;
                context = context2;
                i = 5;
            }
            j8.a(arrayList).a(new Callable() {
                @Override
                public final Object call() {
                    t4.f(this.b, wrhVarA);
                    return null;
                }
            }, t4Var.i);
        } catch (JSONException e3) {
            zze.zzb("Malformed CLD response", e3);
            t4Var.o.zza("MalformedJson");
            t4Var.l.a("MalformedJson");
            t4Var.e.d(e3);
            zzv.zzp().x(e3, "AdapterInitializer.updateAdapterStatus");
            zzfgq zzfgqVar = t4Var.p;
            wrhVarA.f(e3);
            wrhVarA.zzg(false);
            zzfgqVar.zzc(wrhVarA.zzm());
        }
    }

    public final List g() {
        ArrayList arrayList = new ArrayList();
        Map map = this.n;
        for (String str : map.keySet()) {
            zzblh zzblhVar = (zzblh) map.get(str);
            arrayList.add(new zzblh(str, zzblhVar.zzb, zzblhVar.zzc, zzblhVar.zzd));
        }
        return arrayList;
    }

    public final void q() {
        this.q = false;
    }

    public final void r() {
        if (!((Boolean) f0f.a.e()).booleanValue()) {
            if (this.m.clientJarVersion >= ((Integer) zzbd.zzc().b(cye.Z1)).intValue() && this.q) {
                if (this.a) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (this.a) {
                            return;
                        }
                        this.l.f();
                        this.o.zzf();
                        eff effVar = this.e;
                        Runnable runnable = new Runnable() {
                            @Override
                            public final void run() {
                                t4.j(this.zza);
                            }
                        };
                        Executor executor = this.i;
                        effVar.addListener(runnable, executor);
                        this.a = true;
                        im5 im5VarU = u();
                        this.k.schedule(new Runnable() {
                            @Override
                            public final void run() {
                                t4.l(this.zza);
                            }
                        }, ((Long) zzbd.zzc().b(cye.b2)).longValue(), TimeUnit.SECONDS);
                        j8.r(im5VarU, new jog(this), executor);
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        if (this.a) {
            return;
        }
        v("com.google.android.gms.ads.MobileAds", true, "", 0);
        this.e.c(Boolean.FALSE);
        this.a = true;
        this.b = true;
    }

    public final void s(final zzblo zzbloVar) {
        this.e.addListener(new Runnable() {
            @Override
            public final void run() {
                t4 t4Var = this.zza;
                try {
                    zzbloVar.zzb(t4Var.g());
                } catch (RemoteException e) {
                    int i = zze.zza;
                    zzo.zzh("", e);
                }
            }
        }, this.j);
    }

    public final boolean t() {
        return this.b;
    }

    public final synchronized im5 u() {
        String strC = zzv.zzp().j().zzg().c();
        if (!TextUtils.isEmpty(strC)) {
            return j8.h(strC);
        }
        final eff effVar = new eff();
        zzv.zzp().j().zzo(new Runnable() {
            @Override
            public final void run() {
                t4 t4Var = this.zza;
                t4Var.i.execute(new Runnable(t4Var, effVar) {
                    public final eff zza;

                    {
                        this.zza = effVar;
                    }

                    @Override
                    public final void run() {
                        String strC2 = zzv.zzp().j().zzg().c();
                        boolean zIsEmpty = TextUtils.isEmpty(strC2);
                        eff effVar2 = this.zza;
                        if (zIsEmpty) {
                            effVar2.d(new Exception());
                        } else {
                            effVar2.c(strC2);
                        }
                    }
                });
            }
        });
        return effVar;
    }

    public final void v(String str, boolean z, String str2, int i) {
        this.n.put(str, new zzblh(str, z, i, str2));
    }
}
