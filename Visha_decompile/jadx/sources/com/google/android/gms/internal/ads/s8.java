package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.xmi;
import defpackage.ymi;

public final class s8 extends ia implements sti {
    private static final s8 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private u8 zze;
    private g9 zzf;

    static {
        s8 s8Var = new s8();
        zza = s8Var;
        ia.F(s8.class, s8Var);
    }

    public static xmi c0() {
        return (xmi) zza.p();
    }

    public static s8 e0(zzgwn zzgwnVar, esi esiVar) {
        return (s8) ia.N(zza, zzgwnVar, esiVar);
    }

    public static vti h0() {
        return zza.w();
    }

    public static void i0(s8 s8Var, u8 u8Var) {
        u8Var.getClass();
        s8Var.zze = u8Var;
        s8Var.zzc |= 1;
    }

    public static void j0(s8 s8Var, g9 g9Var) {
        g9Var.getClass();
        s8Var.zzf = g9Var;
        s8Var.zzc |= 2;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new s8();
        }
        ymi ymiVar = null;
        if (iOrdinal == 4) {
            return new xmi(ymiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (s8.class) {
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

    public final u8 f0() {
        u8 u8Var = this.zze;
        return u8Var == null ? u8.e0() : u8Var;
    }

    public final g9 g0() {
        g9 g9Var = this.zzf;
        return g9Var == null ? g9.e0() : g9Var;
    }
}
