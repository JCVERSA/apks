package com.google.android.gms.internal.ads;

import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.wvi;
import defpackage.xvi;
import defpackage.yvi;

public final class ab extends ia implements sti {
    private static final ab zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;

    static {
        ab abVar = new ab();
        zza = abVar;
        ia.F(ab.class, abVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", yvi.a, "zze", wvi.a, "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new ab();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new xvi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (ab.class) {
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
