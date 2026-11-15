package com.google.android.gms.internal.ads;

import defpackage.koi;
import defpackage.loi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class j9 extends ia implements sti {
    private static final j9 zza;
    private static volatile vti zzb;
    private String zzc = "";
    private zzgwn zzd = zzgwn.zzb;
    private int zze;

    static {
        j9 j9Var = new j9();
        zza = j9Var;
        ia.F(j9.class, j9Var);
    }

    public static koi b0() {
        return (koi) zza.p();
    }

    public static j9 e0() {
        return zza;
    }

    public static void i0(j9 j9Var, String str) {
        str.getClass();
        j9Var.zzc = str;
    }

    public static void j0(j9 j9Var, zzgwn zzgwnVar) {
        zzgwnVar.getClass();
        j9Var.zzd = zzgwnVar;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new j9();
        }
        loi loiVar = null;
        if (iOrdinal == 4) {
            return new koi(loiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (j9.class) {
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

    public final zzgsn c0() {
        zzgsn zzgsnVar;
        int i = this.zze;
        if (i == 0) {
            zzgsnVar = zzgsn.UNKNOWN_KEYMATERIAL;
        } else if (i == 1) {
            zzgsnVar = zzgsn.SYMMETRIC;
        } else if (i == 2) {
            zzgsnVar = zzgsn.ASYMMETRIC_PRIVATE;
        } else if (i != 3) {
            zzgsnVar = i != 4 ? null : zzgsn.REMOTE;
        } else {
            zzgsnVar = zzgsn.ASYMMETRIC_PUBLIC;
        }
        return zzgsnVar == null ? zzgsn.UNRECOGNIZED : zzgsnVar;
    }

    public final zzgwn f0() {
        return this.zzd;
    }

    public final String g0() {
        return this.zzc;
    }
}
