package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.tmi;
import defpackage.umi;
import defpackage.vti;

public final class q8 extends ia implements sti {
    private static final q8 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private r8 zze;

    static {
        q8 q8Var = new q8();
        zza = q8Var;
        ia.F(q8.class, q8Var);
    }

    public static tmi c0() {
        return (tmi) zza.p();
    }

    public static q8 e0(zzgwn zzgwnVar, esi esiVar) {
        return (q8) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void h0(q8 q8Var, r8 r8Var) {
        r8Var.getClass();
        q8Var.zze = r8Var;
        q8Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new q8();
        }
        umi umiVar = null;
        if (iOrdinal == 4) {
            return new tmi(umiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (q8.class) {
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

    public final r8 f0() {
        r8 r8Var = this.zze;
        return r8Var == null ? r8.e0() : r8Var;
    }
}
