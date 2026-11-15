package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class z1 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final z1 zzd;
    private static volatile vti zze;
    private int zzf;
    private int zzg;
    private d2 zzh;
    private f2 zzi;

    static {
        z1 z1Var = new z1();
        zzd = z1Var;
        ia.F(z1.class, z1Var);
    }

    public static y1 h0() {
        return (y1) zzd.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzbbn$zzb$zzd.zze(), "zzh", "zzi"});
        }
        if (iOrdinal == 3) {
            return new z1();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new y1();
        }
        if (iOrdinal == 5) {
            return zzd;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zze;
        if (msiVar == null) {
            synchronized (z1.class) {
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

    public final void e0(zzbbn$zzb$zzd zzbbn_zzb_zzd) {
        this.zzg = zzbbn_zzb_zzd.zza();
        this.zzf |= 1;
    }

    public final void f0(d2 d2Var) {
        d2Var.getClass();
        this.zzh = d2Var;
        this.zzf |= 2;
    }

    public final void g0(f2 f2Var) {
        f2Var.getClass();
        this.zzi = f2Var;
        this.zzf |= 4;
    }
}
