package com.google.android.gms.internal.ads;

import defpackage.aoe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.yne;
import defpackage.zne;

public final class e extends ia implements sti {
    private static final e zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private boolean zzg;
    private k zzi;
    private l zzj;
    private boolean zzk;
    private boolean zze = true;
    private String zzf = "unknown_host";
    private boolean zzh = true;

    static {
        e eVar = new e();
        zza = eVar;
        ia.F(e.class, eVar);
    }

    public static yne b0() {
        return (yne) zza.p();
    }

    public static void g0(e eVar, boolean z) {
        eVar.zzc |= 8;
        eVar.zzg = z;
    }

    public static void h0(e eVar, String str) {
        str.getClass();
        eVar.zzc |= 4;
        eVar.zzf = str;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", aoe.a, "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (iOrdinal == 3) {
            return new e();
        }
        zne zneVar = null;
        if (iOrdinal == 4) {
            return new yne(zneVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (e.class) {
                try {
                    msiVar = zzb;
                    if (msiVar == null) {
                        msiVar = new msi(zza);
                        zzb = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public final k d0() {
        k kVar = this.zzi;
        return kVar == null ? k.d0() : kVar;
    }

    public final l e0() {
        l lVar = this.zzj;
        return lVar == null ? l.c0() : lVar;
    }

    public final String f0() {
        return this.zzf;
    }

    public final boolean i0() {
        return this.zzg;
    }
}
