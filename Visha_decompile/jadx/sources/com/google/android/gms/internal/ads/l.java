package com.google.android.gms.internal.ads;

import defpackage.moe;
import defpackage.msi;
import defpackage.noe;
import defpackage.sti;
import defpackage.vti;

public final class l extends ia implements sti {
    public static final int zza = 0;
    private static final l zzb;
    private static volatile vti zzc;
    private int zzd;
    private boolean zzf;
    private boolean zzg;
    private long zze = 100;
    private long zzh = 300;
    private long zzi = 1000;

    static {
        l lVar = new l();
        zzb = lVar;
        ia.F(l.class, lVar);
    }

    public static l c0() {
        return zzb;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (iOrdinal == 3) {
            return new l();
        }
        noe noeVar = null;
        if (iOrdinal == 4) {
            return new moe(noeVar);
        }
        if (iOrdinal == 5) {
            return zzb;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzc;
        if (msiVar == null) {
            synchronized (l.class) {
                try {
                    msiVar = zzc;
                    if (msiVar == null) {
                        msiVar = new msi(zzb);
                        zzc = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
