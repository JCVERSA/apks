package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.ppe;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;

public final class y extends ia implements sti {
    private static final y zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd;
    private String zze = "";
    private zzgwn zzf = zzgwn.zzb;

    static {
        y yVar = new y();
        zza = yVar;
        ia.F(y.class, yVar);
    }

    public static y d0() {
        return zza;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new y();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new ppe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (y.class) {
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

    public final long b0() {
        return this.zzd;
    }

    public final zzgwn e0() {
        return this.zzf;
    }

    public final String f0() {
        return this.zze;
    }

    public final boolean g0() {
        return (this.zzc & 1) != 0;
    }
}
