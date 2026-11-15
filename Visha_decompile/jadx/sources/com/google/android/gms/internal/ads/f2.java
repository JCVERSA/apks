package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class f2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final f2 zzd;
    private static volatile vti zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        f2 f2Var = new f2();
        zzd = f2Var;
        ia.F(f2.class, f2Var);
    }

    public void g0(int i) {
        this.zzf |= 4;
        this.zzi = i;
    }

    public static e2 h0() {
        return (e2) zzd.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (iOrdinal == 3) {
            return new f2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new e2();
        }
        if (iOrdinal == 5) {
            return zzd;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zze;
        if (msiVar == null) {
            synchronized (f2.class) {
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

    public final void e0(boolean z) {
        this.zzf |= 1;
        this.zzg = z;
    }

    public final void f0(boolean z) {
        this.zzf |= 2;
        this.zzh = z;
    }
}
