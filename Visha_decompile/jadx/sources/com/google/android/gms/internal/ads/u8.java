package com.google.android.gms.internal.ads;

import defpackage.bni;
import defpackage.cni;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class u8 extends ia implements sti {
    private static final u8 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private w8 zze;
    private zzgwn zzf = zzgwn.zzb;

    static {
        u8 u8Var = new u8();
        zza = u8Var;
        ia.F(u8.class, u8Var);
    }

    public static bni c0() {
        return (bni) zza.p();
    }

    public static u8 e0() {
        return zza;
    }

    public static void i0(u8 u8Var, w8 w8Var) {
        w8Var.getClass();
        u8Var.zze = w8Var;
        u8Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new u8();
        }
        cni cniVar = null;
        if (iOrdinal == 4) {
            return new bni(cniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (u8.class) {
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
        return this.zzd;
    }

    public final w8 f0() {
        w8 w8Var = this.zze;
        return w8Var == null ? w8.e0() : w8Var;
    }

    public final zzgwn g0() {
        return this.zzf;
    }
}
