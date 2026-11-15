package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.soi;
import defpackage.sti;
import defpackage.vti;
import defpackage.woi;

public final class m9 extends ia implements sti {
    private static final m9 zza;
    private static volatile vti zzb;
    private int zzc;
    private j9 zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        m9 m9Var = new m9();
        zza = m9Var;
        ia.F(m9.class, m9Var);
    }

    public static soi d0() {
        return (soi) zza.p();
    }

    public static void g0(m9 m9Var, j9 j9Var) {
        j9Var.getClass();
        m9Var.zzd = j9Var;
        m9Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new m9();
        }
        woi woiVar = null;
        if (iOrdinal == 4) {
            return new soi(woiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (m9.class) {
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

    public final int b0() {
        return this.zzf;
    }

    public final j9 c0() {
        j9 j9Var = this.zzd;
        return j9Var == null ? j9.e0() : j9Var;
    }

    public final zzgtt f0() {
        zzgtt zzgttVarZzb = zzgtt.zzb(this.zzg);
        return zzgttVarZzb == null ? zzgtt.UNRECOGNIZED : zzgttVarZzb;
    }

    public final boolean j0() {
        return (this.zzc & 1) != 0;
    }

    public final int k0() {
        int i = this.zze;
        int i2 = 2;
        if (i != 0) {
            if (i == 1) {
                i2 = 3;
            } else if (i != 2) {
                i2 = i != 3 ? 0 : 5;
            } else {
                i2 = 4;
            }
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
