package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzcx;
import com.google.android.gms.ads.internal.client.zzdk;
import com.google.android.gms.ads.internal.client.zzfr;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzau;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.coh;
import defpackage.cye;
import defpackage.eoh;
import defpackage.g8i;
import defpackage.h3h;
import defpackage.jkg;
import defpackage.joh;
import defpackage.lkg;
import defpackage.mxg;
import defpackage.nxg;
import defpackage.qwf;
import defpackage.qxe;
import defpackage.rdf;
import defpackage.smg;
import defpackage.uzh;
import defpackage.wd8;
import defpackage.x0f;
import defpackage.y7f;
import defpackage.z7f;
import defpackage.zef;
import defpackage.zog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class zzcjl extends zzcx {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final jkg zzc;
    private final mxg zzd;
    private final h3h zze;
    private final t4 zzf;
    private final rdf zzg;
    private final lkg zzh;
    private final zog zzi;
    private final x0f zzj;
    private final zzfgq zzk;
    private final coh zzl;
    private final qwf zzm;
    private final smg zzn;
    private boolean zzo = false;
    private final Long zzp = Long.valueOf(zzv.zzC().elapsedRealtime());

    @VisibleForTesting
    public zzcjl(Context context, VersionInfoParcel versionInfoParcel, jkg jkgVar, mxg mxgVar, h3h h3hVar, t4 t4Var, rdf rdfVar, lkg lkgVar, zog zogVar, x0f x0fVar, zzfgq zzfgqVar, coh cohVar, qwf qwfVar, smg smgVar) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = jkgVar;
        this.zzd = mxgVar;
        this.zze = h3hVar;
        this.zzf = t4Var;
        this.zzg = rdfVar;
        this.zzh = lkgVar;
        this.zzi = zogVar;
        this.zzj = x0fVar;
        this.zzk = zzfgqVar;
        this.zzl = cohVar;
        this.zzm = qwfVar;
        this.zzn = smgVar;
    }

    public static void zzc(zzcjl zzcjlVar, Runnable runnable) {
        wd8.e("Adapters must be initialized on the main thread.");
        Map mapE = zzv.zzp().j().zzg().e();
        if (mapE.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                int i = zze.zza;
                zzo.zzk("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (zzcjlVar.zzc.d()) {
            HashMap map = new HashMap();
            Iterator it = mapE.values().iterator();
            while (it.hasNext()) {
                for (y7f y7fVar : ((z7f) it.next()).a) {
                    String str = y7fVar.b;
                    for (String str2 : y7fVar.a) {
                        if (!map.containsKey(str2)) {
                            map.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((List) map.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    nxg nxgVarA = zzcjlVar.zzd.a(str3, jSONObject);
                    if (nxgVarA != null) {
                        eoh eohVar = (eoh) nxgVarA.b;
                        if (!eohVar.c() && eohVar.b()) {
                            eohVar.o(zzcjlVar.zza, (zzedx) nxgVarA.c, (List) entry.getValue());
                            int i2 = zze.zza;
                            zzo.zze("Initialized rewarded video mediation adapter " + str3);
                        }
                    }
                } catch (zzfbw e) {
                    int i3 = zze.zza;
                    zzo.zzk("Failed to initialize rewarded video mediation adapter \"" + str3 + "\"", e);
                }
            }
        }
    }

    @Override
    public final synchronized float zze() {
        return zzv.zzs().zza();
    }

    @Override
    public final String zzf() {
        return this.zzb.afmaVersion;
    }

    @Override
    public final List zzg() throws RemoteException {
        return this.zzf.g();
    }

    @Override
    public final void zzh(String str) {
        this.zze.g(str);
    }

    @Override
    public final void zzi() {
        this.zzf.q();
    }

    @Override
    public final void zzj(boolean z) throws RemoteException {
        try {
            Context context = this.zza;
            uzh.a(context).c(z);
            if (z) {
                return;
            }
            try {
                if (context.getSharedPreferences("query_info_shared_prefs", 0).edit().clear().commit()) {
                    return;
                } else {
                    throw new IOException("Failed to remove query_info_shared_prefs");
                }
            } catch (IOException e) {
                zzv.zzp().x(e, "clearStorageOnGpidPubDisable_scar");
                return;
            }
            throw new RemoteException(e.getMessage());
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    @Override
    public final synchronized void zzk() {
        if (this.zzo) {
            int i = zze.zza;
            zzo.zzj("Mobile ads is initialized already.");
            return;
        }
        Context context = this.zza;
        cye.a(context);
        zzv.zzp().v(context, this.zzb);
        this.zzm.b();
        zzv.zzc().i(context);
        this.zzo = true;
        this.zzf.r();
        this.zze.f();
        if (((Boolean) zzbd.zzc().b(cye.k4)).booleanValue()) {
            this.zzh.f();
        }
        this.zzi.h();
        if (((Boolean) zzbd.zzc().b(cye.o9)).booleanValue()) {
            zef.a.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.zzx();
                }
            });
        }
        if (((Boolean) zzbd.zzc().b(cye.bb)).booleanValue()) {
            zef.a.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.zzj.a(new zzbua());
                }
            });
        }
        if (((Boolean) zzbd.zzc().b(cye.i3)).booleanValue()) {
            zef.a.execute(new Runnable() {
                @Override
                public final void run() {
                    joh.b(this.zza.zza, true);
                }
            });
        }
        if (((Boolean) zzbd.zzc().b(cye.N4)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.O4)).booleanValue()) {
                zef.a.execute(new Runnable() {
                    @Override
                    public final void run() {
                        zzcjl zzcjlVar = this.zza;
                        zzv.zzf().d(zzcjlVar.zza, zzcjlVar.zzn);
                    }
                });
            }
        }
    }

    @Override
    public final void zzl(@Nullable String str, IObjectWrapper iObjectWrapper) {
        String strZzq;
        Runnable runnable;
        Context context = this.zza;
        cye.a(context);
        if (((Boolean) zzbd.zzc().b(cye.p4)).booleanValue()) {
            try {
                zzv.zzq();
                strZzq = com.google.android.gms.ads.internal.util.zzs.zzq(context);
            } catch (RemoteException | RuntimeException e) {
                zzv.zzp().x(e, "NonagonMobileAdsSettingManager_AppId");
                strZzq = "";
            }
        } else {
            strZzq = "";
        }
        boolean z = true;
        String str2 = true == TextUtils.isEmpty(strZzq) ? str : strZzq;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.i4)).booleanValue();
        qxe qxeVar = cye.e1;
        boolean zBooleanValue2 = zBooleanValue | ((Boolean) zzbd.zzc().b(qxeVar)).booleanValue();
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
            runnable = new Runnable() {
                @Override
                public final void run() {
                    g8i g8iVar = zef.f;
                    final zzcjl zzcjlVar = this.zza;
                    final Runnable runnable3 = runnable2;
                    g8iVar.execute(new Runnable() {
                        @Override
                        public final void run() {
                            zzcjl.zzc(zzcjlVar, runnable3);
                        }
                    });
                }
            };
        } else {
            runnable = null;
            z = zBooleanValue2;
        }
        Runnable runnable3 = runnable;
        if (z) {
            zzv.zza().zzc(this.zza, this.zzb, str2, runnable3, this.zzk, this.zzn, this.zzp, this.zzi.r());
        }
    }

    @Override
    public final void zzm(zzdk zzdkVar) throws RemoteException {
        this.zzi.i(zzdkVar, zzduc.API);
    }

    @Override
    public final void zzn(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            int i = zze.zza;
            zzo.zzg("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            int i2 = zze.zza;
            zzo.zzg("Context is null. Failed to open debug menu.");
        } else {
            zzau zzauVar = new zzau(context);
            zzauVar.zzn(str);
            zzauVar.zzo(this.zzb.afmaVersion);
            zzauVar.zzr();
        }
    }

    @Override
    public final void zzo(zzboy zzboyVar) throws RemoteException {
        this.zzl.f(zzboyVar);
    }

    @Override
    public final synchronized void zzp(boolean z) {
        zzv.zzs().zzc(z);
    }

    @Override
    public final synchronized void zzq(float f) {
        zzv.zzs().zzd(f);
    }

    @Override
    public final synchronized void zzr(String str) {
        Context context = this.zza;
        cye.a(context);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) zzbd.zzc().b(cye.i4)).booleanValue()) {
                zzv.zza().zzc(context, this.zzb, str, null, this.zzk, null, null, this.zzi.r());
            }
        }
    }

    @Override
    public final void zzs(zzblo zzbloVar) throws RemoteException {
        this.zzf.s(zzbloVar);
    }

    @Override
    public final void zzt(String str) {
        if (((Boolean) zzbd.zzc().b(cye.z9)).booleanValue()) {
            zzv.zzp().A(str);
        }
    }

    @Override
    public final void zzu(zzfr zzfrVar) throws RemoteException {
        this.zzg.n(this.zza, zzfrVar);
    }

    @Override
    public final synchronized boolean zzv() {
        return zzv.zzs().zze();
    }

    @VisibleForTesting
    public final void zzx() {
        if (zzv.zzp().j().zzM()) {
            String strZzi = zzv.zzp().j().zzi();
            if (zzv.zzt().zzj(this.zza, strZzi, this.zzb.afmaVersion)) {
                return;
            }
            zzv.zzp().j().zzx(false);
            zzv.zzp().j().zzw("");
        }
    }
}
