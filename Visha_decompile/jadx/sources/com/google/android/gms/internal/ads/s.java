package com.google.android.gms.internal.ads;

import defpackage.epe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;

public final class s extends ia implements sti {
    private static final s zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;

    static {
        s sVar = new s();
        zza = sVar;
        ia.F(s.class, sVar);
    }

    public static epe b0() {
        return (epe) zza.p();
    }

    public static void d0(s sVar, long j) {
        sVar.zzc |= 32;
        sVar.zzi = j;
    }

    public static void e0(s sVar, long j) {
        sVar.zzc |= 4;
        sVar.zzf = j;
    }

    public static void f0(s sVar, long j) {
        sVar.zzc |= 1;
        sVar.zzd = j;
    }

    public static void g0(s sVar, long j) {
        sVar.zzc |= 8;
        sVar.zzg = j;
    }

    public static void h0(s sVar, long j) {
        sVar.zzc |= 16;
        sVar.zzh = j;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (iOrdinal == 3) {
            return new s();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new epe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (s.class) {
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
