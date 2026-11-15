package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbd;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.t3;
import defpackage.b6f;
import defpackage.c6f;
import defpackage.cye;
import defpackage.fre;
import defpackage.g8i;
import defpackage.gff;
import defpackage.h6f;
import defpackage.i6f;
import defpackage.iff;
import defpackage.m6f;
import defpackage.q6f;
import defpackage.s5f;
import defpackage.vrh;
import defpackage.w5f;
import defpackage.wrh;
import defpackage.y5f;
import defpackage.zef;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeoutException;

public final class t3 {
    public final Context b;
    public final String c;
    public final VersionInfoParcel d;
    public final zzfgq e;
    public final zzbd f;
    public final zzbd g;
    public q6f h;
    public final Object a = new Object();
    public int i = 1;

    public t3(Context context, VersionInfoParcel versionInfoParcel, String str, zzbd zzbdVar, zzbd zzbdVar2, zzfgq zzfgqVar) {
        this.c = str;
        this.b = context.getApplicationContext();
        this.d = versionInfoParcel;
        this.e = zzfgqVar;
        this.f = zzbdVar;
        this.g = zzbdVar2;
    }

    public static void g(t3 t3Var, s5f s5fVar) {
        if (s5fVar.zzi()) {
            t3Var.i = 1;
        }
    }

    public static void h(t3 t3Var, fre freVar, q6f q6fVar) {
        long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        try {
            zze.zza("loadJavascriptEngine > Before createJavascriptEngine");
            w5f w5fVar = new w5f(t3Var.b, t3Var.d, null, null);
            zze.zza("loadJavascriptEngine > After createJavascriptEngine");
            zze.zza("loadJavascriptEngine > Before setting new engine loaded listener");
            w5fVar.g(new y5f(t3Var, arrayList, jCurrentTimeMillis, q6fVar, w5fVar));
            zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded");
            w5fVar.b("/jsLoaded", new b6f(t3Var, jCurrentTimeMillis, q6fVar, w5fVar));
            zzby zzbyVar = new zzby();
            c6f c6fVar = new c6f(t3Var, null, w5fVar, zzbyVar);
            zzbyVar.zzb(c6fVar);
            zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /requestReload");
            w5fVar.b("/requestReload", c6fVar);
            String str = t3Var.c;
            zze.zza("loadJavascriptEngine > javascriptPath: ".concat(String.valueOf(str)));
            if (str.endsWith(".js")) {
                zze.zza("loadJavascriptEngine > Before newEngine.loadJavascript");
                w5fVar.zzh(str);
                zze.zza("loadJavascriptEngine > After newEngine.loadJavascript");
            } else if (str.startsWith("<html>")) {
                zze.zza("loadJavascriptEngine > Before newEngine.loadHtml");
                w5fVar.zzf(str);
                zze.zza("loadJavascriptEngine > After newEngine.loadHtml");
            } else {
                zze.zza("loadJavascriptEngine > Before newEngine.loadHtmlWrapper");
                w5fVar.zzg(str);
                zze.zza("loadJavascriptEngine > After newEngine.loadHtmlWrapper");
            }
            zze.zza("loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed");
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new zzbna(t3Var, q6fVar, w5fVar, arrayList, jCurrentTimeMillis), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.d)).intValue());
        } catch (Throwable th) {
            int i = zze.zza;
            zzo.zzh("Error creating webview.", th);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.L7)).booleanValue()) {
                q6fVar.d(th, "SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine");
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.N7)).booleanValue()) {
                zzv.zzp().w(th, "SdkJavascriptFactory.loadJavascriptEngine");
                q6fVar.c();
            } else {
                zzv.zzp().x(th, "SdkJavascriptFactory.loadJavascriptEngine");
                q6fVar.c();
            }
        }
    }

    public static void i(t3 t3Var, q6f q6fVar, final s5f s5fVar, ArrayList arrayList, long j) {
        zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock");
        synchronized (t3Var.a) {
            try {
                zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired");
                if (q6fVar.a() != -1 && q6fVar.a() != 1) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.L7)).booleanValue()) {
                        q6fVar.d(new TimeoutException("Unable to receive /jsLoaded GMSG."), "SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener");
                    } else {
                        q6fVar.c();
                    }
                    g8i g8iVar = zef.f;
                    Objects.requireNonNull(s5fVar);
                    g8iVar.execute(new Runnable() {
                        @Override
                        public final void run() {
                            s5fVar.zzc();
                        }
                    });
                    zze.zza("Could not receive /jsLoaded in " + String.valueOf(com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.c)) + " ms. JS engine session reference status(onEngLoadedTimeout) is " + q6fVar.a() + ". Update status(onEngLoadedTimeout) is " + t3Var.i + ". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is " + String.valueOf(arrayList.get(0)) + " ms. Total latency(onEngLoadedTimeout) is " + (zzv.zzC().currentTimeMillis() - j) + " ms. Rejecting.");
                    zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released");
                    return;
                }
                zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final m6f b(fre freVar) {
        zze.zza("getEngine: Trying to acquire lock");
        Object obj = this.a;
        synchronized (obj) {
            try {
                zze.zza("getEngine: Lock acquired");
                zze.zza("refreshIfDestroyed: Trying to acquire lock");
                synchronized (obj) {
                    try {
                        zze.zza("refreshIfDestroyed: Lock acquired");
                        q6f q6fVar = this.h;
                        if (q6fVar != null && this.i == 0) {
                            q6fVar.f(new iff() {
                                @Override
                                public final void zza(Object obj2) {
                                    t3.g(this.a, (s5f) obj2);
                                }
                            }, new gff() {
                                @Override
                                public final void zza() {
                                }
                            });
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        zze.zza("refreshIfDestroyed: Lock released");
        q6f q6fVar2 = this.h;
        if (q6fVar2 != null && q6fVar2.a() != -1) {
            int i = this.i;
            if (i == 0) {
                zze.zza("getEngine (NO_UPDATE): Lock released");
                return this.h.g();
            }
            if (i != 1) {
                zze.zza("getEngine (UPDATING): Lock released");
                return this.h.g();
            }
            this.i = 2;
            d(null);
            zze.zza("getEngine (PENDING_UPDATE): Lock released");
            return this.h.g();
        }
        this.i = 2;
        this.h = d(null);
        zze.zza("getEngine (NULL or REJECTED): Lock released");
        return this.h.g();
    }

    public final q6f d(fre freVar) {
        wrh wrhVarA = vrh.a(this.b, 6);
        wrhVarA.zzi();
        final q6f q6fVar = new q6f(this.g);
        zze.zza("loadJavascriptEngine > Before UI_THREAD_EXECUTOR");
        final fre freVar2 = null;
        zef.f.execute(new Runnable(freVar2, q6fVar) {
            public final q6f zzb;

            {
                this.zzb = q6fVar;
            }

            @Override
            public final void run() {
                t3.h(this.zza, null, this.zzb);
            }
        });
        zze.zza("loadNewJavascriptEngine: Promise created");
        q6fVar.f(new h6f(this, q6fVar, wrhVarA), new i6f(this, q6fVar, wrhVarA));
        return q6fVar;
    }
}
