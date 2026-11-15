package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.nxh;
import defpackage.oxh;
import defpackage.pxh;
import defpackage.sti;
import defpackage.vti;

public final class h6 extends ia implements sti {
    private static final h6 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private g6 zzg;

    static {
        h6 h6Var = new h6();
        zza = h6Var;
        ia.F(h6.class, h6Var);
    }

    public static nxh b0() {
        return (nxh) zza.p();
    }

    public static void d0(h6 h6Var, String str) {
        str.getClass();
        h6Var.zzc |= 2;
        h6Var.zze = str;
    }

    public static void e0(h6 h6Var, g6 g6Var) {
        g6Var.getClass();
        h6Var.zzg = g6Var;
        h6Var.zzc |= 8;
    }

    public static void f0(h6 h6Var, int i) {
        h6Var.zzd = 1;
        h6Var.zzc = 1 | h6Var.zzc;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzc", "zzd", oxh.a, "zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new h6();
        }
        pxh pxhVar = null;
        if (iOrdinal == 4) {
            return new nxh(pxhVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (h6.class) {
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
