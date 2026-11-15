package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class x2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final x2 zzd;
    private static volatile vti zze;
    private int zzf;
    private String zzg = "";
    private ysi zzh = ia.u();
    private int zzi;

    static {
        x2 x2Var = new x2();
        zzd = x2Var;
        ia.F(x2.class, x2Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001", new Object[]{"zzf", "zzg", "zzh", v2.class, "zzi", zzbbn$zzq.zze()});
        }
        if (iOrdinal == 3) {
            return new x2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new w2();
        }
        if (iOrdinal == 5) {
            return zzd;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zze;
        if (msiVar == null) {
            synchronized (x2.class) {
                try {
                    msiVar = zze;
                    if (msiVar == null) {
                        msiVar = new msi(zzd);
                        zze = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
