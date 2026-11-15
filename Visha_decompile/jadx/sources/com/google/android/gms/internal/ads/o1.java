package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class o1 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final o1 zzd;
    private static volatile vti zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        o1 o1Var = new o1();
        zzd = o1Var;
        ia.F(o1.class, o1Var);
    }

    public static n1 h0() {
        return (n1) zzd.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (iOrdinal == 3) {
            return new o1();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new n1();
        }
        if (iOrdinal == 5) {
            return zzd;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zze;
        if (msiVar == null) {
            synchronized (o1.class) {
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

    public final void e0(int i) {
        this.zzf |= 1;
        this.zzg = i;
    }

    public final void f0(int i) {
        this.zzf |= 4;
        this.zzi = i;
    }

    public final void g0(int i) {
        this.zzf |= 2;
        this.zzh = i;
    }
}
