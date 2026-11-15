package com.google.android.gms.internal.ads;

import defpackage.jwi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class jb extends ia implements sti {
    private static final jb zza;
    private static volatile vti zzb;
    private int zzc;
    private String zzd = "";
    private long zze;

    static {
        jb jbVar = new jb();
        zza = jbVar;
        ia.F(jb.class, jbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new jb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new jwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (jb.class) {
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
