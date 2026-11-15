package com.google.android.gms.internal.ads;

import defpackage.fpe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.vsi;
import defpackage.vti;
import defpackage.ysi;

public final class u extends ia implements sti {
    private static final u zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private boolean zzf;
    private long zzh;
    private boolean zzi;
    private vsi zzg = ia.q();
    private ysi zzj = ia.u();

    static {
        u uVar = new u();
        zza = uVar;
        ia.F(u.class, uVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003\u0006ဇ\u0004\u0007\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", w.class});
        }
        if (iOrdinal == 3) {
            return new u();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new fpe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (u.class) {
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
