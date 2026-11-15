package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.npe;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;

public final class x extends ia implements sti {
    private static final x zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzf;
    private long zzh;
    private long zzi;
    private String zzd = "";
    private String zze = "";
    private String zzg = "D";

    static {
        x xVar = new x();
        zza = xVar;
        ia.F(x.class, xVar);
    }

    public static npe b0() {
        return (npe) zza.p();
    }

    public static void d0(x xVar, String str) {
        xVar.zzc |= 1;
        xVar.zzd = "0.460000000";
    }

    public static void e0(x xVar, String str) {
        str.getClass();
        xVar.zzc |= 2;
        xVar.zze = str;
    }

    public static void f0(x xVar, String str) {
        str.getClass();
        xVar.zzc |= 8;
        xVar.zzg = str;
    }

    public static void g0(x xVar, long j) {
        xVar.zzc |= 4;
        xVar.zzf = j;
    }

    public static void h0(x xVar, long j) {
        xVar.zzc |= 32;
        xVar.zzi = j;
    }

    public static void i0(x xVar, long j) {
        xVar.zzc |= 16;
        xVar.zzh = j;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဈ\u0003\u0005ဂ\u0004\u0006ဂ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (iOrdinal == 3) {
            return new x();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new npe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (x.class) {
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
