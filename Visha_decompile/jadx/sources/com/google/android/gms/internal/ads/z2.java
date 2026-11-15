package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class z2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    private static final z2 zzf;
    private static volatile vti zzg;
    private int zzh;
    private String zzi = "";
    private ysi zzj = ia.u();
    private int zzk = 1000;
    private int zzl = 1000;
    private int zzm = 1000;

    static {
        z2 z2Var = new z2();
        zzf = z2Var;
        ia.F(z2.class, z2Var);
    }

    public static z2 e0() {
        return zzf;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001\u0004᠌\u0002\u0005᠌\u0003", new Object[]{"zzh", "zzi", "zzj", v2.class, "zzk", zzbbn$zzq.zze(), "zzl", zzbbn$zzq.zze(), "zzm", zzbbn$zzq.zze()});
        }
        if (iOrdinal == 3) {
            return new z2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new y2();
        }
        if (iOrdinal == 5) {
            return zzf;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzg;
        if (msiVar == null) {
            synchronized (z2.class) {
                try {
                    msiVar = zzg;
                    if (msiVar == null) {
                        msiVar = new msi(zzf);
                        zzg = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public final void c0(String str) {
        str.getClass();
        this.zzh |= 1;
        this.zzi = str;
    }
}
