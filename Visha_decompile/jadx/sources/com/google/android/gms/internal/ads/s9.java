package com.google.android.gms.internal.ads;

import defpackage.epi;
import defpackage.esi;
import defpackage.fpi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class s9 extends ia implements sti {
    private static final s9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private t9 zze;

    static {
        s9 s9Var = new s9();
        zza = s9Var;
        ia.F(s9.class, s9Var);
    }

    public static epi c0() {
        return (epi) zza.p();
    }

    public static s9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (s9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static vti g0() {
        return zza.w();
    }

    public static void h0(s9 s9Var, t9 t9Var) {
        t9Var.getClass();
        s9Var.zze = t9Var;
        s9Var.zzc |= 1;
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
            return new s9();
        }
        fpi fpiVar = null;
        if (iOrdinal == 4) {
            return new epi(fpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (s9.class) {
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

    public final t9 f0() {
        t9 t9Var = this.zze;
        return t9Var == null ? t9.e0() : t9Var;
    }
}
