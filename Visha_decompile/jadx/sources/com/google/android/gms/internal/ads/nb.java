package com.google.android.gms.internal.ads;

import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.vwi;
import defpackage.wwi;

public final class nb extends ia implements sti {
    private static final nb zza;
    private static volatile vti zzb;
    private int zzc;
    private long zze;
    private boolean zzf;
    private int zzg;
    private boolean zzj;
    private boolean zzk;
    private String zzd = "";
    private String zzh = "";
    private String zzi = "";

    static {
        nb nbVar = new nb();
        zza = nbVar;
        ia.F(nb.class, nbVar);
    }

    public static vwi b0() {
        return (vwi) zza.p();
    }

    public static void d0(nb nbVar, String str) {
        nbVar.zzc |= 1;
        nbVar.zzd = str;
    }

    public static void e0(nb nbVar, long j) {
        nbVar.zzc |= 2;
        nbVar.zze = j;
    }

    public static void f0(nb nbVar, boolean z) {
        nbVar.zzc |= 4;
        nbVar.zzf = z;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", wwi.a, "zzh", "zzi", "zzj", "zzk"});
        }
        if (iOrdinal == 3) {
            return new nb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new vwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (nb.class) {
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
}
