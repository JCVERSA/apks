package com.google.android.gms.internal.ads;

import defpackage.cpi;
import defpackage.dpi;
import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class r9 extends ia implements sti {
    private static final r9 zza;
    private static volatile vti zzb;
    private String zzc = "";

    static {
        r9 r9Var = new r9();
        zza = r9Var;
        ia.F(r9.class, r9Var);
    }

    public static cpi b0() {
        return (cpi) zza.p();
    }

    public static r9 d0() {
        return zza;
    }

    public static r9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (r9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void g0(r9 r9Var, String str) {
        str.getClass();
        r9Var.zzc = str;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzc"});
        }
        if (iOrdinal == 3) {
            return new r9();
        }
        dpi dpiVar = null;
        if (iOrdinal == 4) {
            return new cpi(dpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (r9.class) {
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

    public final String f0() {
        return this.zzc;
    }
}
