package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.hisavana.common.constant.ComConstants;
import defpackage.aj4;
import defpackage.ash;
import defpackage.ccf;
import defpackage.cye;
import defpackage.gkg;
import defpackage.ish;
import defpackage.ksh;
import defpackage.lsh;
import defpackage.stg;
import defpackage.sze;
import defpackage.utg;
import defpackage.vtg;
import defpackage.zef;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class zzfgq implements Runnable {

    @GuardedBy("enabledLock")
    @VisibleForTesting
    public static Boolean zzb;
    private final Context zze;
    private final VersionInfoParcel zzf;
    private int zzi;
    private final gkg zzj;
    private final List zzk;
    private final ccf zzm;

    @VisibleForTesting
    public static final Object zza = new Object();
    private static final Object zzc = new Object();
    private static final Object zzd = new Object();

    @GuardedBy("protoLock")
    private final ksh zzg = n5.c0();
    private String zzh = "";

    @GuardedBy("initLock")
    private boolean zzl = false;

    public zzfgq(Context context, VersionInfoParcel versionInfoParcel, gkg gkgVar, vtg vtgVar, ccf ccfVar) {
        this.zze = context;
        this.zzf = versionInfoParcel;
        this.zzj = gkgVar;
        this.zzm = ccfVar;
        if (((Boolean) zzbd.zzc().b(cye.V8)).booleanValue()) {
            this.zzk = com.google.android.gms.ads.internal.util.zzs.zzd();
        } else {
            this.zzk = zzfww.zzn();
        }
    }

    public static boolean zza() {
        boolean zBooleanValue;
        synchronized (zza) {
            try {
                if (zzb == null) {
                    if (((Boolean) sze.b.e()).booleanValue()) {
                        zzb = Boolean.valueOf(Math.random() < ((Double) sze.a.e()).doubleValue());
                    } else {
                        zzb = Boolean.FALSE;
                    }
                }
                zBooleanValue = zzb.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }

    public static void zzb(zzfgq zzfgqVar, ash ashVar) {
        synchronized (zzd) {
            try {
                if (!zzfgqVar.zzl) {
                    zzfgqVar.zzl = true;
                    if (zza()) {
                        try {
                            zzv.zzq();
                            zzfgqVar.zzh = com.google.android.gms.ads.internal.util.zzs.zzq(zzfgqVar.zze);
                        } catch (RemoteException | RuntimeException e) {
                            zzv.zzp().x(e, "CuiMonitor.gettingAppIdFromManifest");
                        }
                        zzfgqVar.zzi = aj4.g().b(zzfgqVar.zze);
                        int iIntValue = ((Integer) zzbd.zzc().b(cye.Q8)).intValue();
                        if (((Boolean) zzbd.zzc().b(cye.Xb)).booleanValue()) {
                            long j = iIntValue;
                            zef.d.scheduleWithFixedDelay(zzfgqVar, j, j, TimeUnit.MILLISECONDS);
                        } else {
                            long j2 = iIntValue;
                            zef.d.scheduleAtFixedRate(zzfgqVar, j2, j2, TimeUnit.MILLISECONDS);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zza() && ashVar != null) {
            synchronized (zzc) {
                try {
                    ksh kshVar = zzfgqVar.zzg;
                    if (kshVar.v() >= ((Integer) zzbd.zzc().b(cye.R8)).intValue()) {
                        return;
                    }
                    ish ishVarB0 = l5.b0();
                    ishVarB0.Q(ashVar.m());
                    ishVarB0.M(ashVar.l());
                    ishVarB0.B(ashVar.b());
                    ishVarB0.S(3);
                    ishVarB0.J(zzfgqVar.zzf.afmaVersion);
                    ishVarB0.w(zzfgqVar.zzh);
                    ishVarB0.G(Build.VERSION.RELEASE);
                    ishVarB0.N(Build.VERSION.SDK_INT);
                    ishVarB0.R(ashVar.o());
                    ishVarB0.F(ashVar.a());
                    ishVarB0.z(zzfgqVar.zzi);
                    ishVarB0.P(ashVar.n());
                    ishVarB0.x(ashVar.e());
                    ishVarB0.A(ashVar.g());
                    ishVarB0.C(ashVar.h());
                    ishVarB0.E(zzfgqVar.zzj.b(ashVar.h()));
                    ishVarB0.H(ashVar.i());
                    ishVarB0.I(ashVar.d());
                    ishVarB0.y(ashVar.f());
                    ishVarB0.O(ashVar.k());
                    ishVarB0.K(ashVar.j());
                    ishVarB0.L(ashVar.c());
                    if (((Boolean) zzbd.zzc().b(cye.V8)).booleanValue()) {
                        ishVarB0.v(zzfgqVar.zzk);
                    }
                    lsh lshVarB0 = m5.b0();
                    lshVarB0.v(ishVarB0);
                    kshVar.w(lshVarB0);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public final void run() {
        byte[] bArrL;
        if (zza()) {
            Object obj = zzc;
            synchronized (obj) {
                try {
                    if (this.zzg.v() == 0) {
                        return;
                    }
                    try {
                        synchronized (obj) {
                            ksh kshVar = this.zzg;
                            bArrL = ((n5) kshVar.q()).l();
                            kshVar.x();
                        }
                        new utg(this.zze, this.zzf.afmaVersion, this.zzm, Binder.getCallingUid()).zza(new stg((String) zzbd.zzc().b(cye.P8), ComConstants.defScheduleTime, new HashMap(), bArrL, "application/x-protobuf", false));
                    } catch (Exception e) {
                        if ((e instanceof zzdvg) && ((zzdvg) e).zza() == 3) {
                            return;
                        }
                        zzv.zzp().w(e, "CuiMonitor.sendCuiPing");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void zzc(@Nullable final ash ashVar) {
        zef.a.i(new Runnable() {
            @Override
            public final void run() {
                zzfgq.zzb(this.zza, ashVar);
            }
        });
    }
}
