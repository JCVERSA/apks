package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vsi;
import defpackage.vti;

public final class l3 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    private static final l3 zze;
    private static volatile vti zzf;
    private int zzg;
    private int zzi;
    private m1 zzk;
    private String zzh = "";
    private vsi zzj = ia.q();

    static {
        l3 l3Var = new l3();
        zze = l3Var;
        ia.F(l3.class, l3Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzg", "zzh", "zzi", zzbbn$zzq.zze(), "zzj", "zzk"});
        }
        if (iOrdinal == 3) {
            return new l3();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new k3();
        }
        if (iOrdinal == 5) {
            return zze;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzf;
        if (msiVar == null) {
            synchronized (l3.class) {
                try {
                    msiVar = zzf;
                    if (msiVar == null) {
                        msiVar = new msi(zze);
                        zzf = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
