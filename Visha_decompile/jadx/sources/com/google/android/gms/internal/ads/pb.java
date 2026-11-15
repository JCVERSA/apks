package com.google.android.gms.internal.ads;

import defpackage.axi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.zwi;

public final class pb extends ia implements sti {
    private static final pb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private String zze = "";

    static {
        pb pbVar = new pb();
        zza = pbVar;
        ia.F(pb.class, pbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", axi.a, "zze"});
        }
        if (iOrdinal == 3) {
            return new pb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new zwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (pb.class) {
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
