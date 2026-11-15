package com.google.android.gms.internal.ads;

import defpackage.cxi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vsi;
import defpackage.vti;
import defpackage.ysi;

public final class sb extends ia implements sti {
    private static final sb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private int zzg;
    private String zze = "";
    private vsi zzf = ia.q();
    private ysi zzh = ia.u();
    private zzgwn zzi = zzgwn.zzb;

    static {
        sb sbVar = new sb();
        zza = sbVar;
        ia.F(sb.class, sbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u0016\u0005င\u0002\u0006\u001b\u0007ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", rb.class, "zzi"});
        }
        if (iOrdinal == 3) {
            return new sb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new cxi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (sb.class) {
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
