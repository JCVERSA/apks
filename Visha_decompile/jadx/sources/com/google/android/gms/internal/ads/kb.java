package com.google.android.gms.internal.ads;

import defpackage.kwi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.owi;
import defpackage.sti;
import defpackage.vti;

public final class kb extends ia implements sti {
    private static final kb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private long zzf;
    private long zzg;

    static {
        kb kbVar = new kb();
        zza = kbVar;
        ia.F(kb.class, kbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", owi.a, "zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new kb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new kwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (kb.class) {
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
