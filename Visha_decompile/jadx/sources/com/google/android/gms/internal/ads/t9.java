package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.gpi;
import defpackage.hpi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class t9 extends ia implements sti {
    private static final t9 zza;
    private static volatile vti zzb;
    private int zzc;
    private String zzd = "";
    private k9 zze;

    static {
        t9 t9Var = new t9();
        zza = t9Var;
        ia.F(t9.class, t9Var);
    }

    public static gpi c0() {
        return (gpi) zza.p();
    }

    public static t9 e0() {
        return zza;
    }

    public static t9 f0(zzgwn zzgwnVar, esi esiVar) {
        return (t9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void h0(t9 t9Var, k9 k9Var) {
        k9Var.getClass();
        t9Var.zze = k9Var;
        t9Var.zzc |= 1;
    }

    public static void i0(t9 t9Var, String str) {
        str.getClass();
        t9Var.zzd = str;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new t9();
        }
        hpi hpiVar = null;
        if (iOrdinal == 4) {
            return new gpi(hpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (t9.class) {
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

    public final k9 b0() {
        k9 k9Var = this.zze;
        return k9Var == null ? k9.d0() : k9Var;
    }

    public final String g0() {
        return this.zzd;
    }
}
