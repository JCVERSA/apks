package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.yoi;
import defpackage.zoi;

public final class o9 extends ia implements sti {
    private static final o9 zza;
    private static volatile vti zzb;
    private String zzc = "";
    private int zzd;
    private int zze;
    private int zzf;

    static {
        o9 o9Var = new o9();
        zza = o9Var;
        ia.F(o9.class, o9Var);
    }

    public static yoi b0() {
        return (yoi) zza.p();
    }

    public static void f0(o9 o9Var, String str) {
        str.getClass();
        o9Var.zzc = str;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new o9();
        }
        zoi zoiVar = null;
        if (iOrdinal == 4) {
            return new yoi(zoiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (o9.class) {
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
}
