package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cye;
import defpackage.g8i;
import defpackage.q6f;
import defpackage.s5f;
import defpackage.zef;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeoutException;

final class zzbna implements Runnable {
    final q6f zza;
    final s5f zzb;
    final ArrayList zzc;
    final long zzd;
    final t3 zze;

    public zzbna(t3 t3Var, q6f q6fVar, s5f s5fVar, ArrayList arrayList, long j) {
        this.zza = q6fVar;
        this.zzb = s5fVar;
        this.zzc = arrayList;
        this.zzd = j;
        this.zze = t3Var;
    }

    @Override
    public final void run() {
        String str;
        zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock");
        t3 t3Var = this.zze;
        synchronized (t3Var.a) {
            try {
                zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired");
                q6f q6fVar = this.zza;
                if (q6fVar.a() != -1 && q6fVar.a() != 1) {
                    if (((Boolean) zzbd.zzc().b(cye.L7)).booleanValue()) {
                        q6fVar.d(new TimeoutException("Unable to fully load JS engine."), "SdkJavascriptFactory.loadJavascriptEngine.Runnable");
                    } else {
                        q6fVar.c();
                    }
                    g8i g8iVar = zef.f;
                    final s5f s5fVar = this.zzb;
                    Objects.requireNonNull(s5fVar);
                    g8iVar.execute(new Runnable() {
                        @Override
                        public final void run() {
                            s5fVar.zzc();
                        }
                    });
                    String strValueOf = String.valueOf(zzbd.zzc().b(cye.d));
                    int iA = q6fVar.a();
                    int i = t3Var.i;
                    ArrayList arrayList = this.zzc;
                    if (arrayList.isEmpty()) {
                        str = ". Still waiting for the engine to be loaded";
                    } else {
                        str = ". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is " + String.valueOf(arrayList.get(0));
                    }
                    zze.zza("Could not finish the full JS engine loading in " + strValueOf + " ms. JS engine session reference status(fullLoadTimeout) is " + iA + ". Update status(fullLoadTimeout) is " + i + str + " ms. Total latency(fullLoadTimeout) is " + (zzv.zzC().currentTimeMillis() - this.zzd) + " ms at timeout. Rejecting.");
                    zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released");
                    return;
                }
                zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
