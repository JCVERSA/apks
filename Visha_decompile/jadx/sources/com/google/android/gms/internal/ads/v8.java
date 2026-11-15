package com.google.android.gms.internal.ads;

import defpackage.dni;
import defpackage.eni;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class v8 extends ia implements sti {
    private static final v8 zza;
    private static volatile vti zzb;
    private int zzc;
    private w8 zzd;
    private int zze;

    static {
        v8 v8Var = new v8();
        zza = v8Var;
        ia.F(v8.class, v8Var);
    }

    public static dni c0() {
        return (dni) zza.p();
    }

    public static v8 e0() {
        return zza;
    }

    public static void h0(v8 v8Var, w8 w8Var) {
        w8Var.getClass();
        v8Var.zzd = w8Var;
        v8Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new v8();
        }
        eni eniVar = null;
        if (iOrdinal == 4) {
            return new dni(eniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (v8.class) {
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
        return this.zze;
    }

    public final w8 f0() {
        w8 w8Var = this.zzd;
        return w8Var == null ? w8.e0() : w8Var;
    }
}
