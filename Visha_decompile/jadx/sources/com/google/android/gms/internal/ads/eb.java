package com.google.android.gms.internal.ads;

import defpackage.dwi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class eb extends ia implements sti {
    private static final eb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private zzgwn zze;
    private zzgwn zzf;

    static {
        eb ebVar = new eb();
        zza = ebVar;
        ia.F(eb.class, ebVar);
    }

    public eb() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zze = zzgwnVar;
        this.zzf = zzgwnVar;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new eb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new dwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (eb.class) {
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
