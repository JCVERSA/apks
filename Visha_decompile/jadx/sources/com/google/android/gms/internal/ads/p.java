package com.google.android.gms.internal.ads;

import defpackage.bpe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.uoe;
import defpackage.vti;

public final class p extends ia implements sti {
    private static final p zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private long zze = -1;

    static {
        p pVar = new p();
        zza = pVar;
        ia.F(p.class, pVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001", new Object[]{"zzc", "zzd", uoe.a, "zze"});
        }
        if (iOrdinal == 3) {
            return new p();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new bpe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (p.class) {
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
