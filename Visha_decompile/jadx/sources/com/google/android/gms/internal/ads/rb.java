package com.google.android.gms.internal.ads;

import defpackage.bxi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class rb extends ia implements sti {
    private static final rb zza;
    private static volatile vti zzb;
    private int zzc;
    private String zzd = "";
    private String zze = "";

    static {
        rb rbVar = new rb();
        zza = rbVar;
        ia.F(rb.class, rbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new rb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new bxi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (rb.class) {
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
